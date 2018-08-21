origem=$1
destino=$2
valor=$3

url="https://api.exchangeratesapi.io/latest?base=$origem&symbols=$destino"

valorConvertido=`curl $url | jq .rates."$destino"`
echo $valorConvertido

total=`python -c "print $valor*$valorConvertido"`

echo $total


