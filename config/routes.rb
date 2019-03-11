Rails.application.routes.draw do
  root "application#index"

  get '/omc', to: 'application#trades'

  namespace 'api' do
    get '/deals', to: "Api::#index"
  end
end
