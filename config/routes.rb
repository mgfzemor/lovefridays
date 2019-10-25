Rails.application.routes.draw do
  resources :ratings

  resources :teacher_courses do
    get '/ratings', to: 'ratings#teacher_courses', as: :teacher_courses
  end

  resources :courses do
    get '/ratings', to: 'ratings#courses', as: :courses
  end

  resources :teachers do
    get '/ratings', to: 'ratings#teachers', as: :teachers
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
