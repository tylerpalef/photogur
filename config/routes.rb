Rails.application.routes.draw do
# This is to get localhost:3000 to redirect to the index page
  root 'pictures#index'

# This is the index page
  get 'pictures' => 'pictures#index'

# This allows you to put in a get request to add more photos
  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id' => 'pictures#show'

# This is to edit pictures
  get 'pictures/:id/edit' => "pictures#edit"
  patch 'pictures/:id' => "pictures#update"

# Deleting pictures
  delete 'pictures/:id' => 'pictures#destroy'

end
