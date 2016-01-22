load 'webpage.rb'

# Everything about handling Linkedin pages
class Linkedin < Webpage
  def initialize(url)
    super(url)
  end

  def person_name
    puts text_within('span.full-name')
  end

  def occupation
    puts text_within('div#headline p')
  end

  def people_also_viewed
    html_block('#aux > div.insights > div:nth-child(12) li').each do |person|
      puts text_within('h4', person)
      puts text_within('p.browse-map-title', person)
      puts url_within('a', person)
    end
    # html_block('#aux > div.insights > div:nth-child(12) li').each do |person|
    #   puts text_within('h4', person)
    #   puts text_within('p.browse-map-title', person)
    #   puts url_within('a', person)
    # end
  end 
end
