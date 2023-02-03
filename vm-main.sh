echo "Choisir action avec numero 1 - 4 :"
echo "1. Modifier RAM"
echo "2. Modifier Processeur"
echo "3. Redemarer VM"
echo "4. Eteindre VM"
read -p "Choix : " vmAction

if [ "$vmAction" == "1" ]; then
    ramDispo=$(free -m | grep Mem | awk '{print $7}')
    echo "Pour information il reste : $ramDispo MB"
    echo ""
    echo "Choisir nouvelle valeur de la ram : "
    echo "1 : 1 Go"
    echo "2 : 2 Go"
    echo "3 : 3 Go"
    echo "4 : 4 Go"
    echo "5 : 5 Go"
    echo "6 : 6 Go"
    echo "7 : 7 Go"
    echo "8 : 8 Go"
    echo "9 : 9 Go"
    echo "10 : 10 Go"
    echo "11 : 11 Go"
    echo "12 : 12 Go"
    echo "13 : 13 Go"
    echo "14 : 14 Go"
    echo "15 : 15 Go"
    read quant
    echo ""
    echo "Nouvelle valeur Ram $quant Go"
    if ["$quant" == "1"]; then
        qm set 102 --memory 1000
    elif ["$quant" == "2"]; then
        qm set 102 --memory 2000
    elif ["$quant" == "3"]; then
        qm set 102 --memory 3000
    elif ["$quant" == "4"]; then
        qm set 102 --memory 4000
    elif ["$quant" == "5"]; then
        qm set 102 --memory 5000
    elif ["$quant" == "6"]; then
        qm set 102 --memory 6000
    elif ["$quant" == "7"]; then
        qm set 102 --memory 7000
    elif ["$quant" == "8"]; then
        qm set 102 --memory 8000
    elif ["$quant" == "9"]; then
        qm set 102 --memory 9000
    elif ["$quant" == "10"]; then
        qm set 102 --memory 10000
    elif ["$quant" == "11"]; then
        qm set 102 --memory 11000
    elif ["$quant" == "12"]; then
        qm set 102 --memory 12000
    elif ["$quant" == "13"]; then
        qm set 102 --memory 13000
    elif ["$quant" == "14"]; then
        qm set 102 --memory 14000
    elif ["$quant" == "15"]; then
        qm set 102 --memory 15000
    else
        echo "entré pas bon"

    fi

    qm restart 102
fi