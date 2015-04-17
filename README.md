# lita-geoip

TODO: Add a description of the plugin.

## Installation

Add lita-geoip to your Lita instance's Gemfile:

``` ruby
gem "lita-geoip"
```

## Configuration

``` ruby
Lita.configure do |config|
  config.handlers.geoip.datfile = "/path/to/GeoIP.dat"
end
```

``` ruby
Rakefile (SAMPLE

GEOIP_URL = 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz'

namespace :geoip do
  task :update => 'tmp/geoip/GeoIP.dat'
    Dir.glob('tmp/geoip/GeoIP.dat*').each { |f| File.unlink(f) }
    file 'tmp/geoip/GeoIP.dat.gz' do |t|
      sh "cd tmp/geoip && wget #{GEOIP_URL}"
    end

    file 'tmp/geoip/GeoIP.dat' => 'tmp/geoip/GeoIP.dat.gz' do |t|
      sh "gzip -dc #{t.prerequisites.first} > #{t.name}"
    end
end

```

## Usage

TODO: Describe the plugin's features and how to use them.

## License

[MIT](http://opensource.org/licenses/MIT)
