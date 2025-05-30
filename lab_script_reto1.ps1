#Reto 1 - Mostrar informacion del sistema
Write-Host "Informacion del sistema:"
Get-WmiObject Win32_ComputerSystem | Format-List *
Write-Host "Informacion de la CPU "
Get-WmiObject Win32_Processor | Format-List *
Write-Host "Informacion de la memoria" 
Get-WmiObject Win32_PhysicalMemory | Format-List *
Write-Host "Informacion del disco" 
Get-WmiObject Win32_DiskDrive | Format-List *

