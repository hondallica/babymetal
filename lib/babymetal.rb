require "babymetal/version"
require "babymetal/url"
require "babymetal/su_metal"
require "babymetal/yui_metal"
require "babymetal/moa_metal"
require "babymetal/member"
require "date"
require "open-uri"
require "nokogiri"

module Babymetal
  def self.shout
    Babymetal::Member.new.shout
  end

  def self.news(lang = "ja")
    lang = "en" if lang != "ja"
    base_url = { "ja" => "http://www.babymetal.jp", "en" => "http://www.babymetal.com" }
    res = OpenURI.open_uri("#{base_url[lang]}/news")

    news = []
    html = Nokogiri::HTML.parse(res.read, nil, "UTF-8")
    html.xpath('//div[@class="contents_column_box"]').each do |node|
      date = node.xpath('div[@class="column_under_right_line"]').text
        .gsub(/Posted : (\d{4})\.(\d{2})\.(\d{2})/,'\1-\2-\3')

      title = node.xpath('div[@class="contents_title"]').text

      url = node.xpath("div/div/div/a/@data-url").to_s
        .gsub "http://www.en.babymetal.jp", base_url["en"]

      news.push( {date: date, title: title, url: url} ) if date != ""
    end

    news
  end

end
