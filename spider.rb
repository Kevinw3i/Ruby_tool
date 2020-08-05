require 'nokogiri'
require 'open-uri'
require 'json'
require 'date'



financing_url = 'https://www.twse.com.tw/exchangeReport/MI_MARGN?response=json&date=20200720&selectType=MS&_=1595316382390'
# doc = Nokogiri::HTML(open( url ), nil, 'UTF-8')

# p JSON[ open( financing_url ).read ]

p "上市信用交易增減 / 單位：張、億元"
# yestoday_fingancing = JSON[ open( financing_url ).read ]
p "信用交易 | 融資增減 | 融券增減 | 融資餘額 | 融資增減 | 增減"

# 融資餘額
# p "#{yestoday_fingancing['creditList'][2][5]}"




def generate_code(number)
    charset = Array('A'..'Z') + Array('a'..'z') + Array('1'..'9')
    Array.new(number) { charset.sample }.join
  end
puts generate_code(8)

p [*'a'..'z',*'A'..'Z',*0..9].sample(8)

p Array.new(3,Array.new(2))
p Array.new(3) { Array.new(2) }