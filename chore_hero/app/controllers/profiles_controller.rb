  class ProfilesController < ApplicationController
 
  before_action :find_profiles, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path(@profile.id)
    else
      render 'edit'
    end
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profile_path(@profile.id)
    else
      render 'new'
    end
  end  

  def destroy
    @profile.destroy
    redirect_to profile_path
  end

  private

     def find_profile
       @profile = Profile.find(params[:id])
     end

     def profile_params
       params.require(:profile).permit(:xp_total, :xp_level, :custom_name, :archenemy)
     end

end

