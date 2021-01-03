FILE=$1
for WORD in `cat $FILE`
do
   #echo $WORD
   command ./getQuote.sh $WORD 
done