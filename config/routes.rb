Rails.application.routes.draw do
  resources :sprockets, :only => [:show], :i18n => false
end
