class HomesController < ApplicationController
  def index
    @reports = Report.order(created_at: :desc).page(params[:page]).per(10)
  end
end
