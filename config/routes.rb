Rails.application.routes.draw do
  resources :urls, except: [:index]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'urls#new'
  
  get "*path", controller: "urls", action: "expand"
end
