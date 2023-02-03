import proxmoxer

def startVm(proxmox, vmId):
    proxmox.nodes('GP6').qemu(vmId).status.post(action='start')

def stopVm(proxmox, vmId):
    proxmox.nodes('GP6').qemu(vmId).status.post(action='stop')

def restartVm(proxmox, vmId):
    print("redemarage Vm")
    proxmox.nodes('GP6').qemu(vmId).status.post(action='reset')
    statusVm(proxmox, vmId)

def statusVm(proxmox, vmId):
    print(proxmox.nodes('<node>').qemu(vmId).status.get()['status'])

def configVm(proxmox, vmId):
    return proxmox.nodes('GP6').qemu(vmId).config.get()


go = True
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
        
        if action == 1:
            node = proxmox.nodes('GP6').status.get()
            ramDispo = (node['memory']['free']) // 1000000
            print("\n\n\n")
            print("Il reste " + str(ramDispo) + "MB de libre")
            print("\n\n\n")
            config = configVm(proxmox, vmId)  
            print("\n\n\n")
            print("Nom de la Vm : " + str(configVm['name']))
            print("Ram actuelle : " + str(configVm['memory']))
            newRam = input("Entrer la nouvelle quantité de ram souhaité en MB : ")
            
            if newRam.isdigit():
                
                if newRam <= ramDispo:
                    try:
                        proxmox.nodes('GP6').qemu(vmId).config.post(memory=newRam)
                        print("changement ok !")
                        config = configVm(proxmox, vmId)
                        print("Nouvelle RAM : " + str(config['memory']) + " MB")
                        print("Redemarage de la vm")
                        restartVm(proxmox, vmId)
                        startVm(proxmox, vmId)
                    except:
                        print("echeque de la modification de ram")
        elif action == 3:
            restartVm(proxmox, vmId)
        elif action == 5:
            print(configVm(proxmox, vmId))


    else:
        print("pas int")
else:
    print("Arrete de me prendre et rentre un entier stp !")
    print("maintenant tu na plus qu'a relancer le script")




