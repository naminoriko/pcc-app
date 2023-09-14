class UsersController < ApplicationController
  def index
  end

  def show
    @nickname = current_user.nickname
    @last_name = current_user.last_name
    @first_name = current_user.first_name
    @graduation_year = current_user.graduation_year
    @graduation_school = current_user.graduation_school    
    @discipline = current_user.discipline.name
  end
  
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path
    else
      render 'devise/registrations/edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :graduation_year, :graduation_school, :discipline_id)
  end
end
