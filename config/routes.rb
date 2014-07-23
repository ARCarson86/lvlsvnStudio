LvlsvnStudio::Application.routes.draw do

  devise_for :users

  root 'main#index'

  resources :employees do
    resources :employees_skills
    resources :employees_projects
  end

  resources :projects do
    resources :projects_skills
    resources :project_testimonials
    resources :employees_projects
  end

  resources :skills do
    resources :employees_skills
    resources :projects_skills
  end

  resources :testimonials do
    resources :project_testimonials, except: [:new, :create]
  end
end
