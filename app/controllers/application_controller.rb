class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
    def require_user_logged_in
     unless logged_in?
       redirect_to login_url
     end
    end
    
    def counts(user)
      @count_reports = user.reports.count
    end

    def counts(place)
      @counts_reports = place.reports.count
    end
    
end
