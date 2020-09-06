#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/selenium'
require_relative '../lib/crud'

# uncomment the line to run each method

AASS.selenium

crud = Crud.new
response = crud.retrieve_data

user = {
  name: 'morpheus',
  job: 'leader'
}

# response = crud.send_data(user)

updated_user = {
  name: 'morpheus',
  job: 'developer'
}

# response = crud.update_data(updated_user, 1)

# response = crud.delete_data(1)

puts response.code, response.body
