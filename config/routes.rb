Rails.application.routes.draw do
  root to: 'rooms#show'

  # ここでAction Cableを有効にしている
  mount ActionCable.server => '/cable'
end
