class ProfileController < ApplicationController
  	before_filter :authenticate_user!

  	def show
  		@user = current_user
  	end

  	def getpatient
  		national_id = params[:national_id].to_s
  		@patient = Patient.find_by_national_id(national_id.encrypt(:symmetric, :password => 'secret_key'))
  		respond_to do |format|
        	format.json  { render :json => @patient }
	    end
  	end
end
