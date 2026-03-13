Get-RemoteDomain | fl DomainName,AutoForwardEnabled

# Подключение к почтовому серверу
$exc=New-PSSession -ConfigurationName microsoft.exchange -ConnectionUri http://{корпоративный email}/powershell
Import-PSSession $exc

# Проверка на подключение переадресации (есть или нет)
Get-Mailbox -Identity {почта пользователя} |fl ForwardingAddress, ForwardingSmtpAddress, DeliverToMailboxAndForward

# Отключение переадресации у пользователя
Set-Mailbox -Identity {почта пользователя} -DeliverToMailboxAndForward $False -ForwardingAddress $null -ForwardingSmtpAddress $null

