Rails.application.routes.draw do

  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    passwords: 'teachers/passwords',
    registrations: 'teachers/registrations'
  }

  devise_for :students, controllers: {
    sessions: 'students/sessions',
    passwords: 'students/passwords',
    registrations: 'students/registrations'
  }

  root to: "homes#index"

  resources :homerooms do
    resources :comments do
    end
    collection do
      get 'search'
    end
  end

  resources :schools do
    resources :messages
  end
  
end