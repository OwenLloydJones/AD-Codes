Import-module ActiveDirectory 
$Array      = @('GroupName1', 'GroupName2') ##Chane this for the groups removing/adding 
$Domain    = "DomainName"  ## Change thtis for the domain in question.

$users = Get-Content ".\Users.txt"  ##txt. doc for the usernames to be put into  
ForEach($user in $users) ##users = txt. user is single .txt.
    { 
        Write-Host "Processing: $user"  ##putputs the user being worked on 
        ForEach($group in $Array) ##Adds user to each goups in the array 
            {
                #Remove-ADGroupMember -Server $Domain -Identity $Group -Member $user -passthru -Confirm:$false ## Removes user
                Add-ADGroupMember -Server $Domain -Identity $Group -Member $user  -passthru  -Confirm:$false ##Adds user 

##########Delete the Hash at the beggnnning of line 11 for Removing an AD group. delete 12 if you are adding 

            } # end ForEach($group 
    } # end ForEach($user
Write-output 'finished'