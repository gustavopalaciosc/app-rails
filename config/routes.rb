Rails.application.routes.draw do
  
  # GET HomePage
  get "/", to: "pokemons#index" 

  # GET pokemons a traves de la POKEAPI
  get "/pokemons", to: "pokemons#get"
end
