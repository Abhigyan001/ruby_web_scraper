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

  def web_scraper(val)
    url = 'https://www.bloggingcage.com/highest-paying-affiliate-programs/'
    parsed = Nokogiri::HTML(URI.open(url))
    article_title = parsed.css('h3').to_a
    article_title[val-1].text
  end
end