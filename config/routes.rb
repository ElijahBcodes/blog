Rails.application.routes.draw do
  get 'blog/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'blog_posts' => 'blog_post#index'
  get 'blog_posts/new' =>'blog_post#new', as: 'new_blog_post'
  get 'blog_posts/:id' =>'blog_post#show', as: 'blog_post'
  post 'blog_posts' => 'blog_post#create' 
  delete 'blog_posts/:id' => 'blog_post#destroy', as: 'delete_blog'
  patch 'blog_posts/:id' => 'blog_post#update'
  get 'blog_post/:id/edit' => 'blog_post#edit', as: 'edit_blog_post'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  root 'blog_post#index'
end
