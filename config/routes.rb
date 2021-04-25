Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :facts
      end
    end
  end

end
