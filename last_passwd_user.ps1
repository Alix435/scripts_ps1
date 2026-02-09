Get-ADUser -Identity "loginuser" -Properties PasswordLastSet, PasswordNeverExpires | 
  Select-Object Name, PasswordLastSet, PasswordNeverExpires
