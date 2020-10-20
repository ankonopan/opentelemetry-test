# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/json'

class Orders < Sinatra::Base
  get '/orders' do
    json orders: {
      id: 1,
      name: 'First Order'
    }
  end
end
