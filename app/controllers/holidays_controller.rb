class HolidaysController < ApplicationController
    
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @profile = Profile.find(params[:profile_id])
    @holiday = @profile.holidays.create(holiday_params)
    redirect_to profile_path(@profile)
  end
 
  def show
  @holiday = Holiday.find(params[:id])
  end

   def destroy
    @profile = Profile.find(params[:profile_id])
    @holiday = @profile.holidays.find(params[:id])
    @holiday.destroy
    redirect_to profile_path(@profile)
  	end
 
  private
    def holiday_params
      params.require(:holiday).permit(:comment, :start_date, :end_date)
    end
end