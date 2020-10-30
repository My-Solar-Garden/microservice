# Plants Microservice
This Sinatra application serves as a microservice for My Solar Garden [url], an application for [insert app description]. It collects plant data by requesting information from the [Harvest Helper API](https://github.com/damwhit/harvest_helper).

## Getting Started
[ insert setup instructions ]

## Endpoints
- All requests should be sent to https://plants-api-2006.herokuapp.com

### Get all plants
GET https://plants-api-2006.herokuapp.com/plants

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