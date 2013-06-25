class ApplicationController < ActionController::Base
  before_filter :set_local
  protect_from_forgery
  def set_local
    if params[:locale]&&["en","zh"].include?(params[:locale])
      session[:locale]=params[:locale]
    end
    I18n.locale = session[:locale]||I18n.default_locale
  end
end
