# frozen_string_literal: true

namespace :parser do
  desc 'Here we parse hospitals from web-site'
  task parse: :environment do
    require 'csv'
    require 'nokogiri'
    require 'open-uri'

    url = 'https://www.newsweek.com/rankings/worlds-best-hospitals-2023'
    doc = Nokogiri::HTML(URI.open(url, 'User-Agent' => 'Mozilla/5.0'))
    hospitals = doc.css('div#block-ibtmedia-rankings-rankings-hospital-desktop > div > div.article-table.ranking-long-table > table > tbody > tr')
    hospitals.each do |hospital|
      tds = hospital.css('td')
      rank = tds[0].text
      name = hospital.css('a').text
      url = tds[1].css('a').first['href']
      country = tds[2].text
      city = tds[3].text
      unless Hospital.exists?(name:, url:)
        puts 'Create hospitals'
        Hospital.create(rank:, name:, url:, country:, city:)
      end
    end
    puts 'READY'
    Hospital.first
  end
end
