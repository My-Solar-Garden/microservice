# [My Solar Garden](https://solar-garden-fe.herokuapp.com/) - Plants Microservice
This Sinatra application serves as a microservice for [My Solar Garden](https://solar-garden-fe.herokuapp.com/), an application for tracking your garden's health and measuring its carbon impacts. It collects plant data by requesting information from the [Harvest Helper API](https://github.com/damwhit/harvest_helper).

## Repos
For access to all the repos that make up the Service Oriented Architecture of this application please visit our [origanization page](https://github.com/My-Solar-Garden).

## Readme Content
- [Getting Started](#getting-started)
- [Endpoints](#endpoints)
- [Database Schema](#testing)
- [Contributors](#contributors)

## Getting Started

### Prerequisites
- Ruby 2.5.3
- [Harvest Helper](https://github.com/damwhit/harvest_helper) API key 

### Installing
```
$ git clone git@github.com:My-Solar-Garden/plants_microservice.git
  # or clone your own fork
$ cd plants_microservice
$ bundle install
$ bundle exec figaro install
```
- Add your Harvest Helper API key to your application.yml file as PLANTS_API_KEY
  - example: `PLANTS_API_KEY: 'mykey'`

### Run your own development server 
- $ rails s
- This is a microservice (no frontend view). To access the frontend repo, head to https://github.com/My-Solar-Garden/front_end_rails.

## Endpoints
- All requests should be sent to https://plants-api-2006.herokuapp.com/api/v1

### Get all plants
GET https://plants-api-2006.herokuapp.com/api/v1/plants

- Example of one's plants details in response:

```
    {
        "id": 22,
        "name": "Parsnips",
        "description": "Parsnips, popular with ancient Greeks and Romans, were brought over to the Americas with the first colonists. Although parsnips are biennials, they are usually grown as an annual vegetable. Parsnips are a hardy, cool-season crop that is best harvested after a hard frost. Parsnips are not only tasty in soups and stews, but can also be enjoyed by themselves.",
        "optimal_sun": "Full-Part Sun",
        "optimal_soil": "Loamy, Sandy, Mildly Acidic-Neutral pH",
        "planting_considerations": "Always sow fresh seed.",
        "when_to_plant": "Parsnips need a long growing season, so sow as soon as the soil is workable.",
        "growing_from_seed": "Sow 2 seeds per inch ½ an inch deep. Seedlings will emerge in 2-3 weeks.",
        "transplanting": "Thin or transplant seedlings to stand 3-6 inches apart.",
        "spacing": "Final plant spacing should be 4-6 inches apart in all directions.",
        "watering": "Water during the summer if rainfall is less than 1 inch per week.",
        "feeding": "Always keep the beds free of weeds.",
        "other_care": "n/a",
        "diseases": "n/a",
        "pests": null,
        "harvesting": "Parsnips mature in about 16 weeks. Leave your parsnips in the ground for a few frosts but harvest before the ground freezes. If you leave them in the ground for the winter, cover them with a thick layer of mulch and harvest immediately after the ground thaws in the spring.",
        "storage_use": "n/a",
        "image_url": "harvest_helper_production/22_parsnips"
    },
```

### Search plants
GET https://plants-api-2006.herokuapp.com/api/v1/plants/search?search_term=desired_plant

## Testing
- Run tests:
  - $ bundle exec rspec
- All tests should be passing

## Contributors

  * Alex Desjardins
    * [GitHub](https://github.com/moosehandlr)
    * [LinkedIn](https://www.linkedin.com/in/alex-desjardins-59297b8b/)
  * Angela Guardia
    * [GitHub](https://github.com/AngelaGuardia)
    * [LinkedIn](https://www.linkedin.com/in/angela-guardia/)
  * Danielle Coleman
    * [GitHub](https://github.com/dcoleman21)
    * [LinkedIn](https://www.linkedin.com/in/danielle-coleman-86ab3b13/)
  * Daniel Lessenden
    * [GitHub](https://github.com/D-Lessenden)
    * [LinkedIn](https://www.linkedin.com/in/lessenden/)
  * Drew Williams
    * [GitHub](https://github.com/drewwilliams5280)
    * [LinkedIn](https://www.linkedin.com/in/drewwilliams5280/)
  * Eric Hale
    * [GitHub](https://github.com/EHale64)
    * [LinkedIn](https://www.linkedin.com/in/eric-hale-656843155/)
  * Hashim Gari
    * [GitHub](https://github.com/hashmaster3k)
    * [LinkedIn](https://www.linkedin.com/in/hashim-gari/)
  * Leah Riffell
    * [GitHub](https://github.com/leahriffell)
    * [LinkedIn](https://www.linkedin.com/in/leah-riffell/)
  * Logan Riffell
    * [GitHub](https://github.com/lkriffell)
    * [LinkedIn](https://www.linkedin.com/in/logan-riffell/)
  * Luke Hunter James-Erickson
    * [GitHub](https://github.com/LHJE)
    * [LinkedIn](https://www.linkedin.com/in/luke-hunter-james-erickson-b65682143/)
  * Nico Rithner 
    * [GitHub](https://github.com/nicorithner)
    * [LinkedIn](https://www.linkedin.com/in/nicorithner/)
  * Norma Lopez 
    * [GitHub](https://github.com/IamNorma)
    * [LinkedIn](https://www.linkedin.com/in/norma-lopez/)
  * Roberto Rodriguez 
    * [GitHub](https://github.com/robertorodriguez12)
    * [LinkedIn](https://www.linkedin.com/in/roberto-j-rodriguez12/)

