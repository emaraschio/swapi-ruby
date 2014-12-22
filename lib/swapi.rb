require 'open-uri'

module Swapi
  class << self
    BASE_URL = 'http://swapi.co/api'
    PLANETS = 'planets'
    PEOPLE = 'people'
    STARSHIPS = 'starships'
    VEHICLES = 'vehicles'
    SPECIES = 'species'
    FILMS = 'films'

    def get_all type
      get type
    end

    def get_planet planet_id
      get PLANETS, planet_id
    end

    def get_person people_id
      get PEOPLE, people_id
    end

    def get_starship starship_id
      get STARSHIPS, starship_id
    end

    def get_vehicle vehicle_id
      get VEHICLES, vehicle_id
    end

    def get_species species_id
      get SPECIES, species_id
    end

    def get_film film_id
      get FILMS, film_id
    end

    private

    def get type, id = ''
      response = execute_request("#{type}/#{id}")
    end

    def execute_request uri
      response = open("#{BASE_URL}/#{uri}").read
    end
  end
end
