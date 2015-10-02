Rails.application.routes.draw do

  root 'pages#home'
  post 'stringify', to: 'pages#stringify'
  put 'age', to: 'pages#person'
  
end
