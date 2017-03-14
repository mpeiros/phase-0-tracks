apartment_building = {
  unit_one: {
    pretty_name: 'Apartment 1',
    tenants: [
      'Bob',
      'Joe'
    ],
    unit_info: {
      bedrooms: 2,
      baths: 1
    },
    pets: {
      dogs: [
        'Rover'
      ],
      cats: []
    }
  },
  unit_two: {
    pretty_name: 'Apartment 2',
    tenants: [
      'Gary',
      'Fred',
      'Beth'
    ],
    unit_info: {
      bedrooms: 3,
      baths: 2
    },
    pets: {
      dogs: [],
      cats: [
        'Fluffy'
      ]
    }
  },
  unit_three: {
    pretty_name: 'Apartment 3',
    tenants: [
      'Susan',
      'Catherine'
    ],
    unit_info: {
      bedrooms: 2,
      baths: 2
    },
    pets: {
      dogs: [
        'Fido',
        'Rocky'
      ],
      cats: [
        'Missy'
      ]
    }
  },
  unit_four: {
    pretty_name: 'Apartment 4',
    tenants: [
      'Jerry',
      'George',
      'Elaine',
      'Kramer'
    ],
    unit_info: {
      bedrooms: 4,
      baths: 3
    },
    pets: {
      dogs: [
        'Beethoven'
      ],
      cats: [
        'Hairball',
        'Scratchy'
      ]
    }
  }
}

# Access the dog's name in apartment 1
p apartment_building[:unit_one][:pets][:dogs][0] # => 'Rover'

# Access list of tenants in apartment 3
p apartment_building[:unit_three][:tenants] # => ['Susan', 'Catherine']

# Access the second tenant in apartment 3
p apartment_building[:unit_three][:tenants][1] # => 'Catherine'

# Access number of bedrooms in apartment 2
p apartment_building[:unit_two][:unit_info][:bedrooms] # => 3

# Access the second cat's name in apartment 4
p apartment_building[:unit_four][:pets][:cats][1] # => 'Scratchy'
