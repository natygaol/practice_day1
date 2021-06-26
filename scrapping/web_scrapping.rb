# Identificar las 5 primeras peliculas y me guardo el url
# Accedo a cada película por su url
# Buscar la información necesaria y guardarla en un hash o array
# Guardar en movies.yml

require 'open-uri'
require 'nokogiri'

def fetch_movies_url
  # Abrir la url
  
  url = "https://www.imdb.com/chart/top"
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  
  # Buscar los href de las 5 primeras peliculas desde el href 
  html_doc.search('.titleColumn a').first(5).each do |element|
    puts element.text.strip
    puts element.attribute('href').value
  end


  # Guardar esos resultados en un array
  # Return array
end

def scrape_movie(url)
end

