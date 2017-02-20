# Gatekeeper

The city of New York has a Rails application that relies upon an external API for its data.

```ruby
people = Census.request

people.each do |person_hash|
  Citizen.create(person_hash)
end
```

Unfortunately, the API will occasionally return parameters they don't want to accept, such as the `action` field which is to be written by the application only.

```
Request URL: https://zuul.census.gov/api/loc/NY/New%20York%20City.json
```

```json
{
  "people": [
    {
      "name": "Gozer the Gozerian",
      "date_of_birth": null,
      "occupation": "Destroyer of Worlds",
      "address": "55 Central Park West",
      "address2": "Rooftop",
      "city": "New York City",
      "state": "New York",
      "country": "United States",
      "action": "Destroy the world as a giant marshmallow man"
    },
    // ...
  ]
}
```

Unlike the `params` object offered in Rails, we cannot call `#permit` or `#require` on a `Hash`.  What are some strategies to avoid accepting unwanted parameters?
