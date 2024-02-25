# frozen_string_literal: true
require 'csv'
require 'nokogiri'
require 'open-uri'
url = 'https://www.newsweek.com/rankings/worlds-best-hospitals-2023'
doc = Nokogiri::HTML(URI.open(url, "User-Agent" => "Mozilla/5.0"))
hospitals = doc.css('div#block-ibtmedia-rankings-rankings-hospital-desktop > div > div.article-table.ranking-long-table > table > tbody > tr')

CSV.open("Hospitals.csv", "wb") do |csv|
    csv<<["Rank", "HName", "URL", "Country", "City"]#, "State(U.S. only)"]
    hospitals.each do |hospital|
      tds = hospital.css('td')
      rank = tds[0].text
      name = tds[1].text
      url = tds[1].css('a').first['href']
      country = tds[2].text
      city = tds[3].text

   csv <<[rank, name, url, country, city]#, location]
 end
end
