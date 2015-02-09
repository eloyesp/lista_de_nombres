#!/usr/bin/env ruby

require 'nokogiri'

doc = Nokogiri::HTML $stdin

elements = doc.xpath('//table[tr[1]/th[1][text()="Nombre"]]/tr/td[1]')

elements.each do |e|
  puts e.content
end
