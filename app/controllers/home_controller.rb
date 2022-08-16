require 'net/http'

class HomeController < ApplicationController
  def index
    url = "https://api.openweathermap.org/data/2.5/weather?lat=45.3834&lon=20.3906&units=metric&appid=a363a7c6557aca6c921d4911b8333b60"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    
    @data = JSON.parse(res.body)
  end
end
