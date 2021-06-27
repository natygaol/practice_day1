require_relative '../scraper'
require 'spec_helper'
require 'yaml'

describe "fetch_movies_url" do
  it "Return an array of movies" do
    # guardamos el resultado del método en una variable
    urls = fetch_movies_url
    expected = [
      "https://www.imdb.com/title/tt0111161/",
      "https://www.imdb.com/title/tt0068646/",
      "https://www.imdb.com/title/tt0071562/",
      "https://www.imdb.com/title/tt0468569/",
      "https://www.imdb.com/title/tt0050083/"
    ]
    expect(urls).to eq(expected)  
  end
  
describe "scrape_movie" do
    it "Return the detailed data from the selected movie" do
      movie_data = scrape_movie("https://www.imdb.com/title/tt0111161/")
      
      expected = {
        cast: [ "Tim Robbins", "Morgan Freeman", "Bob Gunton" ],
        director: "Frank Darabont",
        storyline: "Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man's unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.",
        title: "The Shawshank Redemption",
        year: 1994
      }

      expect(movie_data).to eq(expected)
    end
  end
end
