# frozen_string_literal: true

class HomeController < ApplicationController # rubocop:todo Style/Documentation
  def index
    # Rake::Tasks["parse:hospitals"].invoke
    @hospitals = Hospital.all
    @hospitals.each do |hospital|
      @hospital = hospital # установить переменную @hospital для каждой записи больницы
      # другие действия, если есть
    end
  end
end
