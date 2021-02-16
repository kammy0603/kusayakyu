class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name, :name_kana, :birthday, :prefecture_id, :term_id, :level_id, :frequency_id,
                                             :registration_id, :city, :achievement])
  end
end
