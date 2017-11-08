Rails.application.routes.draw do

  get 'welcome/index'

  resources :calculator, :only => [:index]
  post 'calculator/set_options'
  post 'calculator/init_charts'
  
  root 'welcome#index'

end
