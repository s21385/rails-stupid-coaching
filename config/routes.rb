Rails.application.routes.draw do
  get 'index', to: 'questions#index', as: :index
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer/', to: 'questions#answer', as: :answer
  get '/', to: 'questions#ask', as: :root
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
