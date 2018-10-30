require 'openssl'
require 'open-uri'

class Scraping::BaseService
  def initialize(url)
    @url = url
  end

  def call
    @doc = load_document
    @content = scrap_content
    @result = clean_content
  end

  protected

  def load_document
    Nokogiri::HTML(open(@url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
  end

  def scrap_content
    raise NoMethodError
  end

  def clean_content
    @content.strip
  end
end
