require 'httparty'
require 'pp'
require 'JSON'

response = HTTParty.get("https://poloniex.com/public?command=returnTicker", format: :plain)
obj = JSON.parse response, symbolize_names: true

    btc_eth = obj[:BTC_ETH][:last].to_f
    usd_btc = obj[:USDT_BTC][:last].to_f
    usd_eth = obj[:USDT_ETH][:last].to_f
    amount = 1000

    result_BTC = amount / usd_btc
    result_ETH = amount / usd_eth
    result_BTC_ETH = result_BTC / btc_eth
    result_ETH_BTC = result_ETH * btc_eth

    if result_BTC > result_ETH_BTC
        print "you would lose "
        puts result_BTC - result_ETH_BTC
    else
        print "your profit is "
        puts result_ETH_BTC - result_BTC
    end

    if result_ETH > result_BTC_ETH
        print "you would lose "
        puts result_ETH - result_BTC_ETH
    else
        print "your profit is "
        puts result_BTC_ETH - result_ETH
    end