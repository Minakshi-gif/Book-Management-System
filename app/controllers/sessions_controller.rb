class SessionsController < ApplicationController
  def new
  end

   def create
   employee = Employee.find_by_email(params[:email])
  if employee && employee.authenticate(params[:password])
     session[:employee_id] = employee.id
     redirect_to(action: 'welcome')
   else
     flash.now[:alert] = "Email or password is invalid"
     render "new"
   end
 end

  def destroy
   session[:employee_id] = nil
   redirect_to root_url, notice: "Logged out!"
 end


  def welcome
  end
end
