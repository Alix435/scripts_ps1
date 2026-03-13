# Узнаь дату и время создания учетной записи
Get-ADUser {логин пользователя} –properties name,whencreated|select name,whencreated
