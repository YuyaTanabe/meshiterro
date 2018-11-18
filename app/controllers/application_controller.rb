class ApplicationController < ActionController::Base

    before_action :authenticate_user! #:authenticate_user!とすることによってログイン認証がされていなければrootパスへリダイレクトする

    # /deviseのコントローラのデフォルトでは用意されていないカラム(name)を追加したための修正
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
    # deviseのコントローラのデフォルトでは用意されていないカラム(name)を追加したための修正/

end
