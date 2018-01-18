class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  http_basic_authenticate_with name: "user", password: "user", except: [:index, :show]
 
  def index
    @articles = Article.all
  end
end
