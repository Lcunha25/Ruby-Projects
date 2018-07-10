require 'httparty'
require 'pp'
require 'JSON'

def nibbleSnackPrice

    # get information from Desk Nibbles Inc
    mainSnacks = HTTParty.get("https://desknibbles.ca/products.json?limit=250", format: :plain)
    snacksObj = JSON.parse mainSnacks, symbolize_names: true

    # loop information to get all snacks price on Desk Nibbles Inc
    ary2 = []
    r = 0
    while (r < snacksObj[:products].length - 1)
        r = r + 1
        snackPriceNibbles = snacksObj[:products][r][:variants][0][:price].to_s
        ary2 << snackPriceNibbles
    end
    return ary2
end