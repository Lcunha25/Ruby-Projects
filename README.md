# Ruby
This is a bundle of small projects on Ruby
One of them is a converter of currencies and cryptos that looks for triangular arbitrage opportunities.
the second is a small project scrapping and comparing two different JSON get files from the web and showing different results.

# Structure
The first project is interacting with the XE currency conversion website. It uses Mechanize to interact with the website, inputting information to the two choosen currencies to be exchanged agains the USD and comparing triangulating it.
The second project is interacting with the Amazon website to extract data from snack sellers and coparing it with another json list from the Nibble website. In the end it extracts and compares data from these two websites.

# Running the project
-First install locally mechanize, JSON, pp, httparty and Ruby.


### First Project
-Type in the CLI, when in the project folder, "ruby rate.rb"
-Enter one of the following currencies to compare it to the USD

AED - Emirati Dirham, BHD - Bahraini Dinar, HKD - Hong Kong Dollar, JOD - Jordanian Dinar, JPY - Japanese Yen, KWD - Kuwaiti Dinar, OMR - Omani Rial, PHP - Philippine Piso, QAR - Qatari Riyal, SAR - Saudi Arabian Riyal, THB - Thai BahtEurope, BGN - Bulgarian Lev, CHF - Swiss Franc, CZK - Czech Koruna, DKK - Danish Kronea, EUR - Euro, GBP - British Pound, HRK - Croatian Kuna, HUF - Hungarian Forint, ILS - Israeli Shekel, NOK - Norwegian Krone, PLN - Polish Zloty, RON - Romanian Leu, RSD - Serbian Dinar, SEK - Swedish Krona, TRY - Turkish Lira, CAD - Canadian Dollar, JMD - Jamaican Dollar, MXN - Mexican Peso, USD - US Dollara, AUD - Australian Dollar, FJD - Fijian Dollar, NZD - New Zealand Dollar, BWP - Botswana Pula, KES - Kenyan Shilling, LSL - Basotho Loti, MUR - Mauritian Rupee, SZL - Swazi Lilangeni, TND - Tunisian Dinar, ZAR - South African Rand"

-Again enter the second currency you would like to compare on the cli.
-Wait for the result, if there is an arbitrtion opportunity the system will display a message saying there is an opportunity.

-To rum the crypto conversion please enter the command "ruby crypto_rate.rb" on your CLI.
-The crypto conversion is fixed on BTC ETH conversions as those are the main currencies with enough volume for arbitrage operations.

### Second Project
Start by running amazonEmail.rb, amazonList.rb, nibbleList.rb and nibblePrice.rb on your CLI-IRB.
Once that is successfully you are able to run compareAndExtractEmail and compareAndExtractPrice.

-amazonEmail captures and shows e-mails of every person selling snacks on amazon

-amazonList captures and shows list of snacks from amazon

-nibbleList captures and shows list of snacks from nibble

-nibblePrice captures and shows price for the snacks listed

-compareAndExtractEmail compares the list of snacks from nibbles and amazon, selects commom snacks and displays the e-mail of people selling them from amazon.

-compareAndExtractPrice compares the list of snacks from nibbles and amazon, selects commom snacks and displays the price they sell for. After that it sums them and shows how much they would cost to the user.


# Development
-The first project is still in development and the goal is to have it functioning with and web interface and communicating with other exchanges. The end result will show arbitrage opportunities between different currencies in different systems and.

-The second project still needs to be authomatized on the compareAndExtract files. Inside them I still need to work on a comparison while loop that will automaticaly compare and fetch the information of the matching snack names. Besides that the other loops are already authomatize and should work without any problem.

# Devnotes
-this calculator is in no way official and it should not be used for any financial operations.
-this calculator does not calculate transactions costs and fees.
-the second project was built as part of a challange of a job application for Nibbles.