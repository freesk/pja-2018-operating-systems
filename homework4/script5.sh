numberToWord()
{
  n=$1
  if (( n == 0)); then
    echo "zero"
  elif (( n == 1)); then
    echo "one"
  elif (( n == 2)); then
    echo "two"
  elif (( n == 3)); then
    echo "three"
  elif (( n == 4)); then
    echo "four"
  elif (( n == 5)); then
    echo "five"
  elif (( n == 6)); then
    echo "six"
  elif (( n == 7)); then
    echo "seven"
  elif (( n == 8)); then
    echo "eight"
  elif (( n == 9)); then
    echo "nine"
  elif (( n == 10)); then
    echo "ten"
  elif (( n == 11)); then
    echo "eleven"
  elif (( n == 12)); then
    echo "twelve"
  elif (( n == 13)); then
    echo "thirteen"
  elif (( n == 14)); then
    echo "fourteen"
  elif (( n == 15)); then
    echo "fifteen"
  elif (( n == 16)); then
    echo "sixteen"
  elif (( n == 17)); then
    echo "seventeen"
  elif (( n == 18)); then
    echo "eighteen"
  elif (( n == 19)); then
    echo "nineteen"
  elif (( n == 20)); then
    echo "twenty"
  elif (( n == 30)); then
    echo "thirty"
  elif (( n == 40)); then
    echo "forty"
  elif (( n == 50)); then
    echo "fifty"
  elif (( n == 60)); then
    echo "sixty"
  elif (( n == 70)); then
    echo "seventy"
  elif (( n == 80)); then
    echo "eighty"
  elif (( n == 90)); then
    echo "ninety"
  fi
}

n=$1

if (( n < 20 )); then
  echo $(getWord $n)
elif (( n < 100)); then
  mod=$((n % 10))
  # echo $mod
  echo $(getWord $((n-mod)))-$(getWord $mod)
fi
