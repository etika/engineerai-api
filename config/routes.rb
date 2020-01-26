Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :alot_phone_numbers, as: "phones",:except => [:new, :edit, :update, :show, :destroy]
  post '/phones/:id'=> 'alot_phone_numbers#phones'
end
