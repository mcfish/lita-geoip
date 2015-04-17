require 'geoip'
module Lita
  module Handlers
    class Geoip < Handler

      config :datfile, type: String

      route(/^!geoip ([^ ]+)$/, :get_country_code)

      def get_country_code(response)
        geoip = GeoIP.new(config.datfile)
        host  = response.matches.first.first
        begin
          country = geoip.country(host)
          raise if !country || country.country_code2 == '--'
          response.reply country.country_code2
        rescue
          response.reply '- -;'
        end
      end

    end

    Lita.register_handler(Geoip)
  end
end
