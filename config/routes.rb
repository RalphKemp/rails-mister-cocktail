Rails.application.routes.draw do
  resources :cocktails, except: [:delete] do
    resources :doses
  end
end


