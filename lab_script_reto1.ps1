#Reto 1 - Mostrar informacion del sistema

#Muestra de informacion del sistema (usuario, fabricante, etc.)
Write-Host "Informacion del sistema:"
Get-WmiObject Win32_ComputerSystem | Format-List *

#Muestra inforrmacion del procesador
Write-Host "Informacion de la CPU "
Get-WmiObject Win32_Processor | Format-List *

#Muestra informacion de la memoria
Write-Host "Informacion de la memoria" 
Get-WmiObject Win32_PhysicalMemory | Format-List *

#Muestra informacion del disco
Write-Host "Informacion del disco" 
Get-WmiObject Win32_DiskDrive | Format-List *

