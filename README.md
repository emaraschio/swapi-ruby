Swapi Ruby
====

A Ruby helper library for swapi.co - the Star Wars API

![Darth Vader](http://3.bp.blogspot.com/-RA6aaFC4fPY/T91VeiHEK8I/AAAAAAAAAWo/M6drwtR73es/s1600/vader.jpg)

Description
-----------

Documentation: http://swapi.co/documentation

Installation
------------

``` console
$ gem install swapi
```

Basic Usage
-----

``` ruby
require "swapi"

# Will print a JSON response with Luke Skywalker information
luke = Swapi.get_person 1

# Will print a JSON response with Tatooine specs
tatooine = Swapi.get_planet 1
```

Methods
=======

These are the top-level methods you can use to get resources from swapi.co

get_person(people_id)
------------

Return a single ``Person`` resource.

Example::

    Swapi.get_person 1
    >>> <Person - Luke Skywalker>


get_planet(planet_id)
------------

Return a single ``Planet`` resource.

Example::

    Swapi.get_planet 1
    >>> <Planet - Tatooine>


get_starship(starship_id)
------------

Return a single ``Starship`` resource.

Example::

    Swapi.get_starship 6
    >>> <Starship - Death Star>


get_vehicle(vehicle_id)
------------

Return a single ``Vehicle`` resource.

Example::

    Swapi.get_vehicle 4
    >>> <Vehicle - Sand Crawler>


get_film(film_id)
------------

Return a single ``Film`` resource.

Example::

    Swapi.get_film 1
    >>> <Film - A New Hope>


get_all("resource_type")
------------

Return all the items in a single resource.

Example::

    Swapi.get_all "films"
