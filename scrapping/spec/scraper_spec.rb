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
      expected = {
        cast: [ "", "", "" ],
        director: "",
        storyline: "",
        title: "",
        year: 2000
      }

      movie_data = scrape_movie("https://www.imdb.com/title/tt0111161/")
      expect(movie_data).to eq(expected)
    end
  end
end
