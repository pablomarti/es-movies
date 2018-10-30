class Scraping::ImdbService < Scraping::BaseService
  def initialize(movie_id)
    @url = 'https://www.imdb.com/title/' + movie_id
  end

  protected

  def scrap_content
    title_story_line_div = @doc.css('#titleStoryLine')
    title_story_line_div.css('div')[0].css('p').css('span').text
  end
end
