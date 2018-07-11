require 'httparty'
require 'pp'
require 'JSON'

def nibbleSnackList

    # get information from Desk Nibbles Inc
    mainSnacks = HTTParty.get("https://desknibbles.ca/products.json?limit=250", format: :plain)
    snacksObj = JSON.parse mainSnacks, symbolize_names: true

    # loop information to get all snacks listed on Desk Nibbles Inc
    ary = []
    r = 0
    while (r < snacksObj[:products].length - 1)
        r = r + 1
        snackNameNibbles = snacksObj[:products][r][:title].to_s
        ary << snackNameNibbles
    end
    return ary
end