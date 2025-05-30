#Reto 1 - Mostrar informacion del sistema
Write-Host "Informacion del sistema:"
Get-WmiObject Win32_ComputerSystem | Format-List *
Write-Host "Informacion de la CPU "
Get-WmiObject Win32_Processor | Format-List *
Write-Host "Informacion de la memoria" 
Get-WmiObject Win32_PhysicalMemory | Format-List *
Write-Host "Informacion del disco" 
Get-WmiObject Win32_DiskDrive | Format-List *
#Reto 2 - Listar procesos y finalizar uno
Write-Host "Procesos en ejecucion:"
Get-Process | Select-Object Name, Id, CPU, WS | Sort-Object CPU -Descending | Format-Table -AutoSize
$processName = Read-Host "Ingrese el nombre del proceso a finalizar"
Stop-Process -Name $processName -Force
Write-Host "Proceso $processName finalizado."

