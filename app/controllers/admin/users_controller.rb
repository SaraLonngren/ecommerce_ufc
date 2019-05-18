class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    render 'edit'
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_user_path(@user), notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete[:password]
      params.delete[:password_confirmation]
    end
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_user_path(@user), notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :salary)
    end
end