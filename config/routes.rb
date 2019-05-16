Rails.application.routes.draw do
  #resources :phases
  get "phases/phase1"
  get "phases/phase2"
  get "phases/phase3"
  root "home#index"
  get 'home/index'
  get 'home/about'
  get 'home/contect'
  get 'pstaffs/showuser'

  get 'pstaffs/tstaff_new'
  get 'pstaffs/phdstaff_new'
  get 'pstaffs/vender_new'
  get 'pstaffs/others_new'

  resources :pstaffs

  devise_scope :user do
  	delete 'sign_out', to: 'devise/sessions#new'
  end

  devise_for :users
  resources :users


  get "check/phase1"
  get "check/phase2"
  get "check/phase3"
  post "request/approve/:id" , :action=>"approve",:controller=>"check",:as=>"approve"  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
