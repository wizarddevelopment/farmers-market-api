# The Farmer's Market App API

```
GET   /markets
```

- `200` with the following JSON object

```js
  {
    markets : [
      {
        "id" : 1
        "name": "Avacado city"
        "latitude": 43.234234,
        "longitude": -74.43443,
        "locationDescription": "100 Amy street on corner of Armando Blvd",
        "address": {
          "zip": 11324,  
          "street": "100 Amy Street",
          "city": "New York City",
          "state": "New York"
        },
        "links": {
          "web": "http://www.whoever.wherever",
          "twitter": "http://twitter.com/avacadocity"
        },
        "scheduleHoursDescription": "Mondays 4-5pm, random thoughts",
        "scheduleSeasonDescription" "June 11 - July 30"
    ]
  }
```
