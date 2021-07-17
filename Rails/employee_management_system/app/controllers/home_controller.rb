class HomeController < ApplicationController

	def index
		DepartmentWorker.perform_in('default', Time.now, 'myname')
	end
end
