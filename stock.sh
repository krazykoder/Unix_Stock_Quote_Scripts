echo -n "Enter the Stock Symbol : "
read stocksymbol
googleURL="http://finance.google.com/finance/info?client=ig\&q="
#Retrieve the stock value
wget $googleURL$stocksymbol -O /tmp/o.txt 2>/dev/null
stockvalue=$(awk '/,\"l\"/{print $NF}' /tmp/o.txt)
echo "Stock value of $stocksymbol is : $stockvalue"