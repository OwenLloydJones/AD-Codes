#Start-Process powershell.exe -Cre1ntial "" -NoNewWindow -ArgumentList "Start-Process powershell.exe -Verb runAs" ##Prompts for a longon when the script is run
Import-module ActiveDirectory   ##library/module ( like #include in Python.
$input        = Read-Host -Prompt 'Input your server/domain  name (1, 2, 3, 4).'  ##Questions asking the user which domain to use 

$Array1      = @('Group1', 'Group2', 'Group3','Group4') ##arrys to hold the groups people being added to.
$Array2      = @('Group1', 'Group2', 'Group3')   ##These will be for the same groups in different domians
$Array3      = @('Group1','Group2') ##These will all be: Group_Name_Domain
$Array4      = @('Group1','Group2', 'Group3','Group4','Group5' ) #Internal_Calls_UK  - Group name withe the domain at the end.

$Domain1     = "domain.com" ##defining the domains
$Domain2     = "domain.ru"
$Domain3     = "domain.de"
$Domain4     = "domain.co.uk"
$Domain5     = "domain.org"

IF ($input -eq '1') ##if statements to create different Pathways for the diffferent domain s
       {
       Write-output 'Make sure you have entered names into the correct User1.txt document, followed by a new line.' ##text to make sure the user has entered in the users correctly to the doc.
       $input1 = Read-Host -Prompt 'Input your Y/N.'##Asks the user if they have updated the .txt with the userID's Y/N Y=Yes N=NO.
       IF ($input1 -eq 'Y')  ##If user types Y Do this.
              {
              $users = Get-Content ".\Users1.txt" # $users is made out of the users in the .txt file
              ForEach($user in $users) #makes the list of user into individual inputs, Divided by "return"
                     { 
                     Write-Host "Processing: $user" ##Telling the user which USERID is being processed 
                     ForEach($group in $Array1)  # Groups is a vairbale delcted by powershell/AD module. Fethes groups from the array list. breaks the dowm.
                           {  ##-passthru puts the putput from processing the users in the terminal below.
                           Add-ADGroupMember -Server $Domain1 -Identity $Group -Member $user -passthru #Adds the user . The -server picks the domain. -Identity is the groups being added (the array). Members are users.
                           } # end ForEach($group 
                     } # end ForEach($user
              Write-output 'Groups added ' ## when this is done the termianl will out put groups added and the script will end.
              } #end IF ($input1 
       } # end IF ($input

ELSEIF ($input -eq '2')
       {
       Write-output 'Make sure you have entered names into the correct User2.txt document, followed by a new line.'
       $input2 = Read-Host -Prompt 'Input your Y/N.'
       IF ($input2 -eq 'Y')
              {   
              $users = Get-Content ".\Users2.txt"
              ForEach($user in $users)
                     { 
                     Write-Host "Processing: $user"
                     ForEach($group in $Array2)
                           {
                           Add-ADGroupMember -Server $Domain2 -Identity $Group -Member $user -passthru
                           } 
                     } 
              Write-output 'Groups added '
              } 
       } 

ELSEIF ($input -eq '3')
       {
       Write-output 'Make sure you have entered names into the correct User1.txt document, followed by a new line.'
       $input4 = Read-Host -Prompt 'Input your Y/N.'
       IF ($input3 -eq 'Y')
              {
              $users = Get-Content ".\Users3.txt"
              ForEach($user in $users)
                     { 
                     Write-Host "Processing: $user"
                     ForEach($group in $Array3)
                           {
                           Add-ADGroupMember -Server $Domain3 -Identity $Group -Member $user -passthru
                           } 
                     } 
              Write-output 'Groups added'
              }  
       } 

ELSEIF ($input -eq '4')
       {
       Write-output 'Make sure you have entered names into the correct User1.txt document, followed by a new line.'
       $input4 = Read-Host -Prompt 'Input your Y/N.'
       IF ($input4 -eq 'Y')
              {
              $users = Get-Content ".\Users4.txt"
              ForEach($user in $users)
                     { 
                     Write-Host "Processing: $user"
                     ForEach($group in $Array4)
                           {
                           Add-ADGroupMember-Server $Domain4 -Identity $Group -Member $user -passthru
                           }  
                     } 
              Write-output 'Groups added '
              } 
       } 


Write-output "`tfinished"  ## End of all process will output this.

