Rails.application.routes.draw do
  resources :ratings
  resources :teacher_courses
  resources :courses
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
