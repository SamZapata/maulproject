class ProfilesController < ApplicationController

  before_action :set_profile

  def show
    @user_profile = current_user
  end

  def edit
    if false
      @user_profile = current_user
    else
      @user_profile = @profile
    end
  end

  def update
    @user_profile = @profile.update_attributes(profile_params)
    # binding.pry
    respond_to do |format|
      if @user_profile
        format.html { redirect_to profile_url, notice: 'Perfil actualizado correctamente' }
        # redirect_to spree.account_url, notice: I18n.t('spree.account_updated')
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :birthday, :nickname, :about_me)
  end

end
