В начале подключаемся к серваку:
$exc=New-PSSession -ConfigurationName microsoft.exchange -ConnectionUri http://<сюда почту организации>/powershell
Import-PSSession $exc
Через командлет  "Get-MessageTrackingLog" можно проверить логи по письмам юзера
Пример:
Get-MessageTrackingLog -Recipients <почта> -start 11/26/2025 -server mail0000000001
указанная выше дата месяц/день/год
так же можно добавить атрибут -Sender и указать почту отправителя
Через командлет "Get-MailboxJunkEmailConfiguration" можно проверить список заблокированных адресов и доверенных 
Пример:
Get-MailboxJunkEmailConfiguration -Identity <почта>
