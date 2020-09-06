# frozen_string_literal: true
require 'httparty'

class Crud
  include HTTParty
  base_uri 'https://reqres.in/api/'

  def retrieve_data
    self.class.get('/users')
  end

  def send_data(data)
    self .class.post('/users', data)
  end

  def update_data(data, id)
    self.class.put("/users/#{id}", data)
  end

  def delete_data(id)
    self.class.delete("/users/#{id}")
  end

end
