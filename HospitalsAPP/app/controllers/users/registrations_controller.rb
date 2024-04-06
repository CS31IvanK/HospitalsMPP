# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController # rubocop:todo Style/Documentation
    def create
      super do |user|
        if user.role == 'doctor'
          user.create_doctor # (user_id: user.id)
          redirect_to new_doctor_path(user_id: user.id) and return
        elsif user.role == 'patient'
          user.create_patient # (user_id: user.id)
          redirect_to new_patient_path(user_id: user.id) and return
        end
      end
    end
  end
end
