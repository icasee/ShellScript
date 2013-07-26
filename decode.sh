#/bin/sh
echo $1
filelist=`find "$1" -name "*.png"`

#echo "$filelist"
echo "$filelist"|while read file
do
   echo $file 
   ./pngcrush  -revert-iphone-optimizations  "$file" "$file"-"decode.png" >>/dev/null
done
