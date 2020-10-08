require 'nokogiri'
require 'open-uri'

class Scrapeit
  def initialize; end

  def check_input(input)
    if input < 31 && input >= 1
      true
    else
      false
    end
  end
end