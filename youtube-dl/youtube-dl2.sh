input="./links"
while IFS= read -r line
do
  # do something on $line
  youtube-dl "$line"
done < $input
