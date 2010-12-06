class SprocketsController < ActionController::Base
  caches_page :index, :if => Proc.new { Rails.configuration.action_controller.perform_caching }
  
  def index
    sprocket = Sprocket.new
    
    respond_to do |format|
      format.js   { render :text => sprocket.source, :content_type => "text/javascript" }
    end
  end
end
