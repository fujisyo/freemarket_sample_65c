Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get 'index',to:'users/registrations#index'
    get 'cellphones',to:'users/registrations#new_cellphone'
    post 'cellphones',to:'users/registrations#create_cellphone'
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get 'credit_cards', to: 'users/registrations#new_credit_card'
    post 'credit_cards', to: 'users/registrations#create_credit_card'
    get "done", to: "users/registrations#done"
  end

  root "products#index"

  resources :products do
    collection do
      get 'search'
      get 'user_credit'
      get 'user_profile_information'
      get 'user_logout'
      get 'user_profile_edit'
      get 'user-page'
      get 'p_transaction'
      get 'edit'
      get 'like'
      get 'exhibiting'
      get 'transaction'
      get 'sale'
      get 'p_exhibiting'
      get 'purchase_transaction'
      get 'p_soldout'
      get 'evaluation'
      get 'contact'
      get 'guide'
      get 'merupay-receive-cash'
      get 'merupay-selldeadline'
      get 'merupay-sellpast'
      get 'merupay1-expiration-date'
      get 'merupay'
      get 'merupay-transferpast'
      get 'merupay-transfer'
      get 'merupay1-pointpast'
      get 'merupay1'
      get 'buy_confirm/:id',action: "buy_confirm"
      post "buy/:id",action: "buy"
      get "category_search/:category", action: "category_search"
    end
  end
end
