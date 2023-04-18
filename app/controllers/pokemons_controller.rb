require 'json'

class PokemonsController < ApplicationController
    def index
        render "pokemons/home"
    end

    def get
        @response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/snorlax")
        @json_ans = JSON.parse(@response.body)
        puts @json_ans['abilities']

        render "pokemons/index"
    end


end
