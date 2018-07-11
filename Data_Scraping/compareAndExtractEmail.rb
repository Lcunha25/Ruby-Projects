require 'httparty'
require 'pp'
require 'JSON'
load 'nibbleList.rb'
load 'amazonList.rb'
load 'amazonEmail.rb'

# function that compares lists, extract commom values for snacks names and extract snack name and e-mail.
def compareAndExtractEmail
    a = amazonSnackList()
    b = nibbleSnackList()
    c = amazonSnackListEmail()

    e = a.zip(c)

    g = a & b

    arr = []
    i = 0
    while (i < e.length)
        if g[0] == e[i][0] then
            d = e[i]
            arr << d
        elsif g[1] == e[i][0] then
            d = e[i]
            arr << d
        end
        i = i + 1
    end
    r = 0
    while (r < arr.length)
        puts 'Product sold: ' + arr[r][0].to_s
        puts 'Contact of person selling it: ' + arr[r][1].to_s
        r = r + 1
    end 
end
compareAndExtractEmail()