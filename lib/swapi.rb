require "open-uri"

module Swapi
  class << self
    BASE_URL = "https://swapi.dev/api".freeze
    PLANETS = "planets".freeze
    PEOPLE = "people".freeze
    STARSHIPS = "starships".freeze
    VEHICLES = "vehicles".freeze
    SPECIES = "species".freeze
    FILMS = "films".freeze

    def get_all(type)
      get type
    end

    def get_planet(planet_id)
      get PLANETS, planet_id
    end

    def get_person(people_id)
      get PEOPLE, people_id
    end

    def get_starship(starship_id)
      get STARSHIPS, starship_id
    end

    def get_vehicle(vehicle_id)
      get VEHICLES, vehicle_id
    end

    def get_species(species_id)
      get SPECIES, species_id
    end

    def get_film(film_id)
      get FILMS, film_id
    end

    private

    def get(type, id = "")
      response = execute_request("#{type}/#{id}")
    end

    def execute_request(uri)
      url = "#{BASE_URL}/#{uri}"

      uri = URI.parse(url)
      tries = 3

      begin
        response = JSON.parse(uri.open(redirect: false).read)
      rescue OpenURI::HTTPRedirect => e
        uri = e.uri # assigned from the "Location" response header
        retry if (tries -= 1) > 0
        raise
      end
    end
  end
end
