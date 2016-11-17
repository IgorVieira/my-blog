Rails.application.routes.draw do
		
  mount Ckeditor::Engine => '/ckeditor'
		devise_for :users
		resources :posts   
    resources :contact
    resources :projects
    resources :about
    resources :contacts, only:[:new, :create]
    root 'home#index'


  get '*path' => redirect('/')
  
end
