require 'open-uri'
require 'nokogiri'

# Everything about handling webpages
class Webpage
  attr_reader :page

  def initialize(url)
    @page = Nokogiri::HTML(open(url))
  end

  def html_block(selector, block = @page)
    block.css(selector)
  end

  def text_within(selector, block = @page)
    html_block(selector, block).text
  end

  def url_within(selector, block = @page)
    html_block(selector, block)[0]['href']
  end
end