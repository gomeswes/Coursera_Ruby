Rails.application.routes.draw do
  get 'greeter/hello'	=> 'greeter#hello'
  get 'greeter/bye'  	=> 'greeter#goodbye' #needs to define the => part, if the controller/view as a different name than the route
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
