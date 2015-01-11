# The Farmer's Market App API

This api is used to grab data on NYC farmers markets. It makes a best effort to stay up to date. Feel free to use it as much as you like. Let us know if you'd like to rely on it for production use.


```
GET   /api/markets/:id
```

- `200` with the following JSON object

```js
{
  markets: {
    "id": 1
    "name": "Avacado city"
    "latitude": 43.234234,
    "longitude": -74.43443,
    "locationDescription": "100 Amy street on corner of Armando Blvd",
    "address": {
      "zipcode": 11324,
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
  }
}
```

```
GET   /api/markets
```

- `200` with the following JSON object

```js
{
  markets: [
    {
      "id" : 1
      "name": "Avacado city"
      "latitude": 43.234234,
      "longitude": -74.43443,
      "locationDescription": "100 Amy street on corner of Armando Blvd",
      "address": {
        "zipcode": 11324,
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
    }
  ]
}
```
