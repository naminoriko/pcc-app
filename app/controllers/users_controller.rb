class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @last_name = current_user.last_name
    @first_name = current_user.first_name
    @graduation_year = current_user.graduation_year
    @graduation_school = current_user.graduation_school    
    @disciplines = current_user.disciplines
  end
  
  def edit
  end
end
