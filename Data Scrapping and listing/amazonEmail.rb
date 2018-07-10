require 'httparty'
require 'pp'
require 'JSON'

def amazonSnackListEmail

    # get information from amazon
    amazonList = HTTParty.get("https://s3.amazonaws.com/misc-file-snack/MOCK_SNACKER_DATA.json", format: :plain)
    amazonObj = JSON.parse amazonList, symbolize_names: true

    # loop information to get all e-mails with snacks listed on amazon
    ary = []
    i = 0
    while (i < amazonObj.length - 1)
        i = i + 1
        email = amazonObj[i][:email].to_s
        ary << email
    end
    return ary
end