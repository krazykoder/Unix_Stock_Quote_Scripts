googleURL="http://finance.google.com/finance/info?client=ig\&q="
#Retrieve the stock value
stocksymbol=$1
wget $googleURL$stocksymbol -O /tmp/o.txt 2>/dev/null
stockvalue=$(awk '/,\"l\"/{print $NF}' /tmp/o.txt)
printf "$stocksymbol \t:\t $stockvalue\n"