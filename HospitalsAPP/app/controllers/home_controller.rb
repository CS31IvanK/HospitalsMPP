class HomeController < ApplicationController	
	def index
		#Rake::Tasks["parse:hospitals"].invoke
		@hospitals = Hospital.all
		@hospitals.each do |hospital|
			@hospital = hospital # установить переменную @hospital для каждой записи больницы
			# другие действия, если есть
		end
	end
end
