require_relative "my_service"
require_relative "weather_aggregator"

MyService.report_daily_weather(WeatherAggregator.aggregate("60604"))
