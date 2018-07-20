Rails.application.routes.draw do
  resources :tasks

  resources :task_schedules
  match '/task_schedules/complete/:id' => 'task_schedules#complete', as: 'complete_task_schedule', via: :put

  resources :users

  root to: 'users#index'
end
