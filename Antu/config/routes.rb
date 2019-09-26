Rails.application.routes.draw do
  resources :asignaturas
  resources :profesores
  resources :alumnos
  resources :salas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
