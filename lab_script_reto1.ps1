#Reto 1 - Mostrar informacion del sistema

#Muestra de informacion del sistema (usuario, fabricante, etc.)
Write-Host "Informacion del sistema:"
#Se utiliza para obtener datos como el nombre del PC, usuario actual, fabricante del equipo y tipo de sistema
#|Format-List * muestra los datos en forma de lista
Get-WmiObject Win32_ComputerSystem | Format-List *

#Muestra inforrmacion del procesador como nombre del procesador, velocidad, numero de nucleos, etc.
Write-Host "Informacion de la CPU "
Get-WmiObject Win32_Processor | Format-List *

#Muestra informacion de la memoria, como tamaño de cada módulo de RAM, fabricante, etc.
Write-Host "Informacion de la memoria" 
Get-WmiObject Win32_PhysicalMemory | Format-List *

#Muestra informacion del disco, como tipo de disco, tamaño, modelo, número de serie
Write-Host "Informacion del disco" 
Get-WmiObject Win32_DiskDrive | Format-List *

