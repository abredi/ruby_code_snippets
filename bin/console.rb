#!/usr/bin/env ruby
require_relative '../lib/selenium'
require_relative '../lib/crud'
require 'json'

def list_users(users)
  puts "Total users(#{users["total"]})"
  users['data'].each do |user|
    puts "#{user['id']}, #{user['first_name']} #{user['last_name']}, #{user['email']}"
  end
end

# uncomment the line to run each method

# AASS.selenium


crud = Crud.new

response = crud.retrieve_data
list_users(JSON.parse(response.body))

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