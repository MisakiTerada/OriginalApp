class PlacesController < ApplicationController
  
  def index
    @places = Place.all
  end
  
  def show
    @place = Place.find(params[:id])
    @reports = @place.reports.order('created_at DESC').page(params[:page])
    counts(@place)
  end
  
  def create
  end
  
  def rank
    Report.order(people: :desc).pluck(:people)
    Report.order(people: :desc).pluck(:place_id)
    ranking_ids = Report.order(people: :desc).pluck(:place_id)
    @places = Place.find(ranking_ids)
    @people_total = Report.sum(:people)
  end

end
