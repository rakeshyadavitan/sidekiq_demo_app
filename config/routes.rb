Rails.application.routes.draw do
  post 'visitors/contact', to: 'visitors#contact'
  root 'visitors#index'
end
