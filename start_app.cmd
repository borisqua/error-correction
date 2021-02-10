cls
echo What app do you want to start ?
echo 1. Triplets app
echo 2. Hamming code
echo -n "Your choise: "
read -r
choise=$REPLY

#test "$choise" == '1' && echo OK your choise is 1 && exit 0
#test "$choise" == '2' && echo OK your choise is 2 && exit 0
#echo There is no such option
#exit 0;

if [ "$choise" == "1" ]; then
    echo ERROR PROTECTION USING TRIPLETS CODDING: 
    echo doubling bits and adding the parity bit to each such a pair
    echo
    cd triplets/
    ./gradlew clean build
    java -jar app/build/libs/app.jar
exit 0
fi

if [ "$choise" == "2" ]; then
    echo ERROR PROTECTION USING HAMMING CODE: 
    echo adding parity bits in the original bit sequence at the each power of 2 position
    echo like in this scheme PPBPBBBPBBBBBBBP..., here P - parity bit, B - original bit
    echo
    echo parity is being calculated for specific groups of bits depending on the parity bit position
    echo "position 1: check 1 bit, skip 1 bit, check 1 bit, skip 1 bit, etc. (1,3,5,7,9,11,13,15,...)"
    echo "position 2: check 2 bits, skip 2 bits, check 2 bits, skip 2 bits, etc. (2,3,6,7,10,11,14,15,...)"
    echo "position 4: check 4 bits, skip 4 bits, check 4 bits, skip 4 bits, etc. (4,5,6,7,12,13,14,15,20,21,22,23,...)"
    echo etc.
    echo
    cd hamming-code/
    ./gradlew clean build
    java -jar app/build/libs/app.jar
exit 0
fi

echo There is no such option
