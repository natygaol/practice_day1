require_relative '../web_scrapping'

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
        storyline: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
        title: "The Shawshank Redemption",
        year: 1994
      }

      expect(movie_data).to eq(expected)
    end
  end
end
