#!/usr/bin/env ruby

# this system will get 2 currencies parings and compare it to a third currency parying and see if there are any arbitrage opportunities:

require 'mechanize'

# GET'S THE FIRST CURRENCY

print "What rate would you like to convert to? "
    to_rate = gets.chomp

class Xchanger
  def self.get_url from, to
    "http://www.xe.com/currencyconverter/convert/?Amount=1&From=#{from}&To=#{to}"
  end
  def self.get_rate from, to
    a= Mechanize.new
    pg= a.get get_url from, to
    element = pg.search('//*[@id="ucc-container"]/span[2]/span[2]')
    rate = element.text.to_f
  end
  def initialize from: "USD", to: "BRL"
    @from = from.upcase
    @to = to.upcase
    update_rate
  end
  def convert n
    n * @rate
  end
  def get_rate
    self.class.get_rate from, to
  end
  def update_rate
    @rate = get_rate
  end
  attr_reader :from, :to, :rate
  def inspect
    "<Xchanger - Rate from #{from} to #{to} is #{rate}>"
  end
end

from_rate = "USD"

if __FILE__ == $0
  from = ARGV[0] || "#{from_rate}"
  to = ARGV[1] || "#{to_rate}"
  amount = 1000
  x = Xchanger.new from: from, to: to
  first_result = x.convert amount
  puts "#{amount} #{from} is #{first_result} #{to}"
  $conversion_rate = "#{first_result}"
end
# GETS THE SECOND CURRENCY COMPARISSION.
print "What rate would you like to triangle your exchange with? "
    to_rate2 = gets.chomp

    if __FILE__ == $0
      from = ARGV[0] || "#{from_rate}"
      to = ARGV[1] || "#{to_rate2}"
      amount = 1000
      x = Xchanger.new from: from, to: to
      second_result = x.convert amount
      puts "#{amount} #{from} is #{second_result} #{to}"
    end
# GETS THE THIRD CURRENCY COMPARISSION.
if __FILE__ == $0
  from = ARGV[0] || "#{to_rate}"
  to = ARGV[1] || "#{to_rate2}"
  amount = first_result
  x = Xchanger.new from: from, to: to
  third_result = x.convert amount
  puts "#{amount} #{from} is #{third_result} #{to}"
end
# returns if there is an arbitrage opportunity or not:
if second_result < third_result
    puts "There is an arbitrage opportunity"
  else
    puts "Nothing to see here"
end