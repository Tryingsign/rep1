foreach ($i in $numbers ) 

#for ($i=1; $i -le 1; $i++) 

{    

   New-AzADGroup -DisplayName "26311-group-$i" -MailNickname "26311-group-$i" 

   

   $userPrincipal="26311-user-"+$i+"@domain.com" 

   New-AzADUser -DisplayName "26311-user-$i" -UserPrincipalName $userPrincipal ` 

   -Password $SecureStringPassword -MailNickname "26311-user-$i" 

   

   Add-AzADGroupMember -MemberUserPrincipalName $userPrincipal -TargetGroupDisplayName "26311-group-$i"  

    } 