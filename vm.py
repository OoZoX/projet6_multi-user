import proxmoxer

proxmox = proxmoxer.ProxmoxAPI('192.168.1.10', user='root@pam', password='Betarr0103.', verify_ssl=False)


print("Entrer l'id de la vm a modifier")
print("Pour information : ")
print("Pour information :")
print("100 : pfsense")
print("102 : Slave")
print("103 : Apache serveur")
print("104 : Master \n")
vmId = input("Choix : ")
if vmId.isdigit():
    vmId = int(vmId)
    print("\nChoisir action avec numero 1 - 4 :")
    print("1. Modifier RAM")
    print("2. Modifier Processeur")
    print("3. Redemarer VM")
    print("4. Eteindre VM\n")
    action = input("Choix : ")
    if action.isdigit():
        action = int(action)
        if vmId == 1:
            node = proxmox.nodes('GP6').status.get()
            ramDispo = node['memory']['free']
            print("Il reste ", ramDispo, "MB de libre")
            configVm = proxmox.nodes('GP6').qemu(vmId).config.get()
            print(configVm)
else:
    print("Arrete de me prendre et rentre un entier stp !")
    print("maintenant tu na plus qu'a relancer le script")




