class ProfilesController < ApplicationController

http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

def index
 @profiles = Profile.search(params[:search])
end

def show
 @profiles = Profile.find(params[:id])
end

def new
 	@profiles = Profile.new
end
 
def edit
  @profiles = Profile.find(params[:id])
end

 def create
    @profiles = Profile.new(profile_params)

  if @profiles.save
    redirect_to @profiles
  else
    render 'new'
  end
 end

def update
  @profiles = Profile.find(params[:id])
 
  if @profiles.update(profile_params)
    redirect_to @profiles
  else
    render 'edit'
  end
end

def destroy
  @profiles = Profile.find(params[:id])
  @profiles.destroy
 
  redirect_to profiles_path
end


 private
  def profile_params
   #params.require(:profiles).permit(:title, :text)
   #render plain: params[:profile].inspect
   #@profiles = Profile.new(
     	params.require(:profile).permit(:first_name, :surname, :gender, :manager, :role, :start_date, :end_date, :holiday_allowance)
   #@profile.save
end
end