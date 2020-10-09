require 'nokogiri'
require 'open-uri'

class Meditation
  def initialize; end

  def check_input(input)
    if input < 11 && input >= 1
      true
    else
      false
    end
  end

  def web_scraper(val)
    url = 'https://www.gaiam.com/blogs/discover/10-tips-to-start-a-meditation-practice'
    parsed = Nokogiri::HTML(URI.open(url))    
    article_title = parsed.css('h3').to_a
    article_title[val-1].text    
  end

  def tip_detail(val1)
    url = 'https://www.gaiam.com/blogs/discover/10-tips-to-start-a-meditation-practice'
    parsed = Nokogiri::HTML(URI.open(url))
    parsed.search('p')[val1+8].text      
  end
end