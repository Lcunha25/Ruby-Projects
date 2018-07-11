require 'httparty'
require 'pp'
require 'JSON'
load 'nibbleList.rb'
load 'nibblePrice.rb'
load 'amazonList.rb'

# function that compares lists, extract commom values for snacks names, extract snack price and adds the prices.
def compareAndExtractPrice

    a = amazonSnackList()
    b = nibbleSnackList()
    d = nibbleSnackPrice()

    f = b.zip(d)

    g = a & b

    arr = []
    i = 0
    while (i < f.length)
        if g[0] == f[i][0] then
            d = f[i]
            arr << d
        elsif g[1] == f[i][0] then
            d = f[i]
            arr << d
        end
        i = i + 1
    end
    ary = []
    r = 0
    while (r < arr.length)
        puts 'Product sold: ' + arr[r][0].to_s
        puts 'Is being sold for: ' + arr[r][1].to_s
        ary << arr[r][1]
        r = r + 1
    end
    print 'The total you will spend is: '
    puts ary[0].to_f + ary[1].to_f
end
compareAndExtractPrice()