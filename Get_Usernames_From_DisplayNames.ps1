$list = Import-Csv C:\path_to\list.csv
ForEach($user in $list){    
$dn = $user.user
Get-ADUser -Filter { displayName -like $dn } | Select samAccountName | Export-Csv C:\path_to\export2.csv -NoTypeInformation -Append
}

