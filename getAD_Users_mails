Import-Module ActiveDirectory

$DomainDN = "DC=указываем данные"
$SearchOU = "OU=указываем данные, $DomainDN"

$OutputFile = "<сюда указать путь желательно на англ>\ActiveUsers_Export.csv"

Get-ADUser -Filter "Enabled -eq 'true'" -SearchBase $SearchOU -Properties Name, SamAccountName, UserPrincipalName, mail |
    Select-Object Name, mail |
    Sort-Object Name |
    Export-Csv -Path $OutputFile -NoTypeInformation -Encoding UTF8

Write-Host "Done!"
