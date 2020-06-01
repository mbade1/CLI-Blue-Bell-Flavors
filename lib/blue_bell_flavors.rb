#environment file

require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative "./blue_bell_flavors/blue_bell_ice_cream"
require_relative "./blue_bell_flavors/cli"
require_relative "./blue_bell_flavors/scraper"
require_relative "./blue_bell_flavors/version"


module BlueBell
  class Error < StandardError; end
  # Your code goes here...
end
