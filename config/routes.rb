Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "blog_posts" => "blog_posts#index", as: "all_posts"
  get "blog_posts/new" => "blog_posts#new"
  get "blog_posts/:id" => "blog_posts#show", as: "blog_post"
  get "blog_posts/edit/:id" => "blog_posts#edit", as: "blog_edit"
  post "blog_posts" => "blog_posts#create"
  delete "blog_posts/:id" => "blog_posts#delete"
  patch "blog_posts/:id" => "blog_posts#update"
  root to: 'blog_posts#index'
end
