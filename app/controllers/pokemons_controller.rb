require 'json'

class PokemonsController < ApplicationController
    def index
        @response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/snorlax")
        @json_ans = JSON.parse(@response.body)
        puts @json_ans['abilities']
    end
end
