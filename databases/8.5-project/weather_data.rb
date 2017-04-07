require 'httparty'
require 'json'

class WeatherData
  WEATHER_API_URL_START = 'http://api.openweathermap.org/data/2.5/weather?q='
  WEATHER_API_URL_END = '&units=imperial&appid=3d6f679b377e4b4c9ded52dc4d1f046f'
  private_constant :WEATHER_API_URL_START, :WEATHER_API_URL_END

  def initialize(city)
    @city = city
    @weather_description = ''
    @temperature = 0
    @humidity = 0
    @wind_speed = 0
  end

  def get_weather
    api_url = WEATHER_API_URL_START + @city.gsub(/\s+/, '') + WEATHER_API_URL_END
    response = HTTParty.get(api_url)
    if response.code == 200
      response_hash = JSON.parse(response.body, symbolize_names: true)
      update_instance_vars(response_hash)
      true
    else
      false      
    end
  end

  def print_weather_info
    puts "\nCurrent weather for #{@city}:"
    puts "Description = #{@weather_description}"
    puts "Temperature = #{@temperature} degrees Fahrenheit"
    puts "Humidity = #{@humidity}%"
    puts "Wind speed = #{@wind_speed} miles per hour"
  end

  private

    def update_instance_vars(response_hash)
      @weather_description = response_hash[:weather][0][:description]
      @temperature = response_hash[:main][:temp]
      @humidity = response_hash[:main][:humidity]
      @wind_speed = response_hash[:wind][:speed]
    end
end
