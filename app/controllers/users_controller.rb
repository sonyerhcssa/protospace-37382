class UsersController < ApplicationController
  def show
    @prototype = Prototype.all
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user)
  end

end
