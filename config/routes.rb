Rails.application.routes.draw do
  # Routes for the Product resource:

  # CREATE
  match("/new_product_form", { :controller => "products", :action => "blank_form", :via => "get" })
  match("/insert_product_record", { :controller => "products", :action => "save_new_info", :via => "post" })

  # READ
  match("/products", { :controller => "products", :action => "list", :via => "get" })
  match("/products/:id_to_display", { :controller => "products", :action => "details", :via => "get" })
  match("/shopping_lists", { :controller => "products", :action => "shopping_lists", :via  => "get"})

  # UPDATE
  match("/existing_product_form/:id_to_prefill", { :controller => "products", :action => "prefilled_form", :via => "get" })
  match("/update_product_record/:id_to_modify", { :controller => "products", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_product/:id_to_remove", { :controller => "products", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    #match("/:username", { :controller => "products", :action => "list", :via => "get" })
    match("/", { :controller => "application", :action => "home", :via => "get" })

end
