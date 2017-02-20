require "weather_client"
require "signal"

module WeatherAggregator
  def self.aggregate(zip)
    query = WeatherClient.search(location: zip, date: match_date)

    record_count = query.count
    total_low = 0
    total_high = 0
    result = {}

    query.each_page(start_page: 0) do |page, _index|
      page.each do |weather_report|
        result[:minimum_low] = [result[:minimum_low], weather_report.low].compact.min
        result[:maximum_high] = [result[:maximum_high], weather_report.hi].compact.max
        total_low += weather_report.low
        total_high += weather_report.high
      end
    end

    result[:average_lo] = total_low / record_count
    result[:average_high] = total_high / record_count

    result
  end

  def self.match_date
    { month: Date.today.month, day: Date.today.day }
  end

  def self.temp_filename
    fmt_date = Time.now.strftime("%Y-%m-%d")
    File.expand_path(File.dirname(__FILE__), "weather.#{fmt_date}.tmp")
  end
end
