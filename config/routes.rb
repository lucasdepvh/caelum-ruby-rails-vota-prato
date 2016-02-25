VotaPrato::Application.routes.draw do
  resources :comentarios
  resources :clientes
  resources :qualificacoes
  resources :clientes
  resources :restaurantes  
  match 'ola' => 'ola_mundo#index', via: 'get'
end
