require 'httparty'
require 'pp'
require 'JSON'

def amazonSnackList

    # get information from amazon
    amazonList = HTTParty.get("https://s3.amazonaws.com/misc-file-snack/MOCK_SNACKER_DATA.json", format: :plain)
    amazonObj = JSON.parse amazonList, symbolize_names: true

    # loop information to get all snacks listed on amazon
    ary = []
    i = 0
    while (i < amazonObj.length - 1)
        i = i + 1
        snackName = amazonObj[i][:fave_snack].to_s
        ary << snackName
    end
    return ary
end