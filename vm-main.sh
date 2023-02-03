echo "Choisir action avec numero 1 - 4 :"
echo "1. Modifier RAM"
echo "2. Modifier Processeur"
echo "3. Redemarer VM"
echo "4. Eteindre VM"
echo "4. Demarer VM"
read -p "Choix : " vmAction

if [ "$vmAction" == "1" ]; then

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
    if [ "$quant" == "1" ]; then
        qm set 102 --memory 1000
    elif [ "$quant" == "2" ]; then
        qm set 102 --memory 2000
    elif [ "$quant" == "3" ]; then
        qm set 102 --memory 3000
    elif [ "$quant" == "4" ]; then
        qm set 102 --memory 4000
    elif [ "$quant" == "5" ]; then
        qm set 102 --memory 5000
    elif [ "$quant" == "6" ]; then
        qm set 102 --memory 6000
    elif [ "$quant" == "7" ]; then
        qm set 102 --memory 7000
    elif [ "$quant" == "8" ]; then
        qm set 102 --memory 8000
    elif [ "$quant" == "9" ]; then
        qm set 102 --memory 9000
    elif [ "$quant" == "10" ]; then
        qm set 102 --memory 10000
    elif [ "$quant" == "11" ]; then
        qm set 102 --memory 11000
    elif [ "$quant" == "12" ]; then
        qm set 102 --memory 12000
    elif [ "$quant" == "13" ]; then
        qm set 102 --memory 13000
    elif [ "$quant" == "14" ]; then
        qm set 102 --memory 14000
    elif [ "$quant" == "15" ]; then
        qm set 102 --memory 15000
    else
        echo "entré pas bon"

    fi

    qm reboot 102

elif [ "$vmAction" == "2" ]; then
    echo ""
    echo "Choisir nouveau nombre de coeur : "
    echo " 1 : 1 coeur"
    echo " 2 : 2 coeur"
    echo " 3 : 3 coeur"
    echo " 4 : 4 coeur"
    echo " 5 : 5 coeur"
    echo " 6 : 6 coeur"
    read cores

    if [ "$cores" == "1" ]; then
        qm set 102 --cores 1
    elif [ "$cores" == "2" ]; then
        qm set 102 --cores 2
    elif [ "$cores" == "3" ]; then
        qm set 102 --cores 3
    elif [ "$cores" == "4" ]; then
        qm set 102 --cores 4
    elif [ "$cores" == "5" ]; then
        qm set 102 --cores 5
    elif [ "$cores" == "6" ]; then
        qm set 102 --cores 6
    else
        echo "mauvaise entré tu peux recommancer"
    fi

    qm reboot 102

elif [ "$vmAction" == "3" ]; then
    echo "Redemarage VM"
    qm reboot 102
elif [ "$vmAction" == "4" ]; then
    echo "Shutdown VM"
    qm shutdown 102
elif [ "$vmAction" == "5" ]; then
    echo "Start VM"
    qm start 102
fi