# Ruby
This is a small project I am doing to convert currencies and see if there are any triangular arbitrage opportunities.

# Structure
The project is interacting with the XE currency conversion website. It uses Mechanize to interact with the website, inputting information to the two choosen currencies to be exchanged agains the USD and comparing triangulating it.

# Running the project
-First install locally mechanize and Ruby.
-Type in the CLI, when in the project folder, "ruby rate.rb"
-Enter one of the following currencies to compare it to the USD

AED - Emirati Dirham, BHD - Bahraini Dinar, HKD - Hong Kong Dollar, JOD - Jordanian Dinar, JPY - Japanese Yen, KWD - Kuwaiti Dinar, OMR - Omani Rial, PHP - Philippine Piso, QAR - Qatari Riyal, SAR - Saudi Arabian Riyal, THB - Thai BahtEurope, BGN - Bulgarian Lev, CHF - Swiss Franc, CZK - Czech Koruna, DKK - Danish Kronea, EUR - Euro, GBP - British Pound, HRK - Croatian Kuna, HUF - Hungarian Forint, ILS - Israeli Shekel, NOK - Norwegian Krone, PLN - Polish Zloty, RON - Romanian Leu, RSD - Serbian Dinar, SEK - Swedish Krona, TRY - Turkish Lira, CAD - Canadian Dollar, JMD - Jamaican Dollar, MXN - Mexican Peso, USD - US Dollara, AUD - Australian Dollar, FJD - Fijian Dollar, NZD - New Zealand Dollar, BWP - Botswana Pula, KES - Kenyan Shilling, LSL - Basotho Loti, MUR - Mauritian Rupee, SZL - Swazi Lilangeni, TND - Tunisian Dinar, ZAR - South African Rand"

-Again enter the second currency you would like to compare on the cli.
-Wait for the result, if there is an arbitrtion opportunity the system will display a message saying there is an opportunity.

-To rum the crypto conversion please enter the command "ruby crypto_rate.rb" on your CLI.
-The crypto conversion is fixed on BTC ETH conversions as those are the main currencies with enough volume for arbitrage operations.

# Development
-The project is still in development and the goal is to have it functioning with and web interface and communicating with other exchanges. The end result will show arbitrage opportunities between different currencies in different systems and.

# Devnotes
-this calculator is in no way official and it should not be used for any financial operations.
-this calculator does not calculate transactions costs and fees.