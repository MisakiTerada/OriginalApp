class ReportsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  
  def new
    @report = Report.new
  end
  
  def create
    @report = current_user.reports.build(report_params)
    if @report.save
      flash[:success] = "感染報告を投稿しました。"
      redirect_to root_url
    else
      flash.now[:danger] = '感染報告が投稿されませんでした'
      render :new
    end
  end

  def destroy
    @report.destroy
    flash[:warning] = '感染報告を削除しました。'
    redirect_back(fallback_location: user_path(current_user))
  end
  
  private
  
  def report_params
    params.require(:report).permit(:content, :date , :people, :place_id)
  end
  
  def correct_user
    @report = current_user.reports.find_by(id: params[:id])
    unless @report
      redirect_to root_url
    end
  end
  
end
