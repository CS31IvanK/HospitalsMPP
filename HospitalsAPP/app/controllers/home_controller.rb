class HomeController < ApplicationController	
	def index
		#Rake::Tasks["parse:hospitals"].invoke
		@hospitals = Hospital.all
	end
end
