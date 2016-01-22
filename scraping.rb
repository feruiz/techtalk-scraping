load 'linkedin.rb'

# Class Document
class Scraping
  document = Linkedin.new('https://br.linkedin.com/in/feliperuiz')
  
  document.person_name
  document.occupation
  document.people_also_viewed
end