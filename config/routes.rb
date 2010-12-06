Rails.application.routes.draw do
  resources :sprockets, :only => [:index], :i18n => false
end
