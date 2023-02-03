echo ""
echo ""
echo "Entrer ID de la VM à modifier : "
echo "Pour information :"
echo "100 : pfsense"
echo "102 : Slave"
echo "103 : Apache serveur"
echo "104 : Master"
read vmID

echo ""
echo ""

echo "Choisir action avec numero 1 - 4 :"
echo "1. Modifier RAM"
echo "2. Modifier Processeur"
echo "3. Redemarer VM"
echo "4. Eteindre VM"
read vmAction

if [ "$vmAction" == "1" ]; then
    vmId = $( vmId )
    ramDispo=$(free -m | grep Mem | awk '{print $7}')
    echo "Entrer nouvelle valeur de RAM souhaité en MB"
    echo "Pour information il reste : $ramDispo MB"
    
    read ram
    ram = $( ram )
    
    if [ $ram -le $ramDispo ]; then
        qm set expr vmID --memory $ram
        echo "Modification de la ram reussi. Nouvelle valeur : $ram MB"
    else
        echo "Tu me crois assez con pour te faire confiance ? MDR"
        echo "Juste pour information il reste $ramDispo MB"
        echo "Maintenant tu a le drois de pleurer et recommancer ta modif. Aller Bis :)"
    fi
elif [ "$vmAction" == "2" ]; then
    echo "a venir"
elif [ "$vmAction" == "3" ]; then
    echo "a venir"
elif [ "$vmAction" == "4" ]; then
    echo "a venir"
else
    echo "Tu te crois malin a pas entrer un chiffre ?"
    echo "Pour la peine je ferais rien. Domage :("

fi