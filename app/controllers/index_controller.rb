class IndexController < ApplicationController
def index
  @profiles = Profile.all
  if params[:search]
    @profiles = Profile.search(params[:search]).order("created_at DESC")
  else
    @profiles = Profile.all.order('created_at DESC')
  end
end
end