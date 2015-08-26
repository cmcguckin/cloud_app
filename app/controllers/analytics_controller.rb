class AnalyticsController < ApplicationController
  def show
  	@profiles = Profile.all
  	@holidays = Holiday.all
  end
    def holidays 
  	@holidays = Holiday.all
  end
end
