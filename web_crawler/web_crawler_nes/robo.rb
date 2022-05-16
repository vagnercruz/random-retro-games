require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://pt.wikipedia.org/wiki/Lista_de_jogos_para_Nintendo_Entertainment_System'))

table = doc.css('table.wikitable').css('tbody')

open('roms_nes.json', 'w') do |arquivo|

table.search('tr').each do |tr|
    title = tr.css('td').css('i.a').text
    developer = tr.css('td').css('a').text

    arquivo.puts %("#{title.chomp} ";" #{developer.chomp}" )
    next if tr['class'] == '      '
    end
end

 
