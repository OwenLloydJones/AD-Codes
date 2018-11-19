[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")    #modules/libraries 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")  #modules/libraries 

Import-module ActiveDirectory #Module/Library

$Form = New-Object System.Windows.Forms.Form      #Creating form and size of popup window
$Form.Size = New-Object System.Drawing.Size(620,450)  #Creating pixel sizes and position of window#
$Form.Text = "Multiple choice groups" ##Title of the pop-up-box 

$Domain     = "CompanyDomain"  #Setting domain on AD to find user profiles

############################################## Start functions


function ifChecked { # start function ifChecked, houses to check if the if's are checked. 




 $outputBox.text = "Processing:  $($textBox.Text)" ## Outputs the UserID being processed. 


    if ($Group1.Checked -eq $true) #If checkbox is ticked then do the following inside the {}   #If tickbox is ticked then add user to corresponding group. #Add user on Domian GB to Group.
		{
			try #See if the group can be added, if i can...
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName1 -Member $textbox.text -passthru   #Adds user, gets user from textBox vairbale filtered to .text which is what the use imputs
					$outputBox.text = $outputBox.text + "`rAdded Group 1`r" ##Will tell the user if the group has been added to the user profile 
					$outputBox.ForeColor='GREEN' #Will make text green if no Errors 
				}
			catch #IF the group cannot be addedd for some reason. DO this #This is normally because the user either does not exist or already has the groups added to their profile 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group 1"  ##Will tell the user if the group has not been added
					$outputBox.ForeColor='RED' #Will turn output text red once an error is reached.
				}
		} # end if
	
	##

    if ($Group2.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName2 -Member $textbox.text -passthru 
					$outputBox.text = $outputBox.text + "`rAdded Group2" 
					$outputBox.ForeColor='GREEN'
				}
			 catch 
				{ 
					$outputBox.text = $outputBox.text + "`r `tCould not add Group2"
					$outputBox.ForeColor='RED'
				}
		} # end if
      
    ##
	
    if ($Group3.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName3 -Member $textbox.text -passthru 
					$outputBox.text = $outputBox.text + "`rAdded Group3"   
					$outputBox.ForeColor='GREEN'
				}
		     catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group3"
					$outputBox.ForeColor='RED'
				}
		} # end if
	
     ##
	 
    if ($Group4.Checked -eq $true)
		{
			 try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName4 -Member $textbox.text -passthru 
					$outputBox.text = $outputBox.text + "`rAdded Group4"  
					$outputBox.ForeColor='GREEN'
				}
		     catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group4"
					$outputBox.ForeColor='RED'
				}
		} # end 
	
	##


    if ($Group5.Checked -eq $true)
		{
			 try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName5 -Member $textbox.text -passthru 
					$outputBox.text = $outputBox.text + "`rAdded Group5"  
					$outputBox.ForeColor='GREEN'
				}
		     catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group5"
					$outputBox.ForeColor='RED'
				}
		} # end 
	
	##

    if ($Group6.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName6 -Member $textbox.text -passthru  
					$outputBox.text = $outputBox.text + "`rAdded Group6"  
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group6"
					$outputBox.ForeColor='RED'
				}
		}   
 
 ##

    if ($Group7.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName7 -Member $textbox.text -passthru  
					$outputBox.text = $outputBox.text + "`rAdded Group7"  
					$outputBox.ForeColor='GREEN'
				}
			 catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group7"
					$outputBox.ForeColor='RED'
				}
		}  

  ##### 

    if ($Group8.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName8 -Member $textbox.text -passthru
					$outputBox.text = $outputBox.text + "`rAdded Group8"  
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group8"
					$outputBox.ForeColor='RED'
				}
		}  
	
	##
                 
    if ($Group9.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName9 -Member $textbox.text -passthru   
					$outputBox.text = $outputBox.text + "`rAdded Group9" 
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group9"
					$outputBox.ForeColor='RED'
				}
		}  
	
	##
  
    if ($Group10.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName10 -Member $textbox.text -passthru  
					$outputBox.text = $outputBox.text + "`rAdded Group10" 
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group10"
					$outputBox.ForeColor='RED'
				}
		 }  
	 
	 ##

    if ($Group11.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName11 -Member $textbox.text -passthru   
					$outputBox.text = $outputBox.text + "`rAdded Group11"
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group11"
					$outputBox.ForeColor='RED'
				}
		} 
	
	##     

    if ($Group12.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName12 -Member $textbox.text -passthru 
					$outputBox.text = $outputBox.text + "`rAdded Group12"  
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group12"
					$outputBox.ForeColor='RED'
				}
		} 
	 
	 ##

    if ($Group13.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName13 -Member $textbox.text -passthru  
					$outputBox.text = $outputBox.text + "`rAdded Group13"
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group13"
					$outputBox.ForeColor='RED'
				}
		} 

	##


    if ($Group14.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName14 -Member $textbox.text -passthru  
					$outputBox.text = $outputBox.text + "`rAdded Group14"
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group14"
					$outputBox.ForeColor='RED'
				}
		} 
	 
	 ##
 
    if ($Group15.Checked -eq $true)
		{
			try
				{
					Add-ADGroupMember -Server $Domain -Identity GroupName15 -Member $textbox.text -passthru  
					$outputBox.text = $outputBox.text + "`rAdded Group15"
					$outputBox.ForeColor='GREEN'
				}
			catch 
				{ 
					$outputBox.text = $outputBox.text + "`r`tCould not add Group15"
					$outputBox.ForeColor='RED'
				}
		}   
	 
	 ##      
            
	if ($Group16.Checked -eq $true)
		{
			$FileLocation = '.\EmailTemplate.oft'
			Start-Process  $FileLocation
		}

			
     ##If the group name is unrecognised. Check group on ad by searching the groupname. Then check the "display name" and the pre-200Windows name match.
             
} #Ends ProcInfo


                                                
############################################## end functions
##The form is the window that pops up
##The box is the field insdie the form with a title.
############################################## Start group boxes

$GroupSet1 = New-Object System.Windows.Forms.GroupSet1       ## Creates a new box inside the form, This is to house the tick options 
$GroupSet1.Location = New-Object System.Drawing.Size(180,20) ##This is the location of the box inside the form. numbers are pixel cords, x -y
$GroupSet1.size = New-Object System.Drawing.Size(130,200)  ## This is the size of the box inside the form in pixels 
$GroupSet1.text = "Group Set 1:"  #'This is the "title" of the box, what is displayed above it.
$Form.Controls.Add($GroupSet1)  #This is the name of the box, telling it to behave inside of the form.


$GroupSet2 = New-Object System.Windows.Forms.GroupSet1
$GroupSet2.Location = New-Object System.Drawing.Size(320,20) 
$GroupSet2.size = New-Object System.Drawing.Size(130,200) 
$GroupSet2.text = "Group Set 2:" 
$Form.Controls.Add($GroupSet2) 

$GroupSet3 = New-Object System.Windows.Forms.GroupSet1
$GroupSet3.Location = New-Object System.Drawing.Size(460,20) 
$GroupSet3.size = New-Object System.Drawing.Size(130,200) 
$GroupSet3.text = "Group Set 3:" 
$Form.Controls.Add($GroupSet3) 

############################################## end group boxes
############################################# Start background

$Image = [system.drawing.image]::FromFile(".\background_image.png")  ##Bg Location
$Form.BackgroundImage = $Image  ##Defines Background is from variable $image (line above"
$Form.BackgroundImageLayout = "None"  ##If this is not set BG will be tiled. 

############################################# End background

######################################################################### Start check boxes
############################################### Start Box Set 1 boxes

    $Group1 = New-Object System.Windows.Forms.checkbox ## Creates a new Field inside the Box, This is the tick options
    $Group1.Location = New-Object System.Drawing.Size(10,20) ##This is the location of the tick inside the box. numbers are pixel coorrds, x -y
    $Group1.Size = New-Object System.Drawing.Size(100,20) ## This is the size of the tick inside the box in pixels 
    $Group1.Text = "Group1" #'This is the "title" of the tick, what is displayed next to it.
    $GroupSet1.Controls.Add($Group1)  ##This is the name of the tick field , telling it to behavie inside of the box.

    $Group2 = New-Object System.Windows.Forms.checkbox
    $Group2.Location = New-Object System.Drawing.Size(10,40)
    $Group2.Size = New-Object System.Drawing.Size(100,20)
    $Group2.Text = "Group2"
    $GroupSet1.Controls.Add($Group2)

    $Group3 = New-Object System.Windows.Forms.checkbox
    $Group3.Location = New-Object System.Drawing.Size(10,60)
    $Group3.Size = New-Object System.Drawing.Size(100,20)
    $Group3.Text = "Group3"
    $GroupSet1.Controls.Add($Group3)

    $Group4 = New-Object System.Windows.Forms.checkbox
    $Group4.Location = New-Object System.Drawing.Size(10,80)
    $Group4.Size = New-Object System.Drawing.Size(100,20)
    $Group4.Text = "Group4"
    $GroupSet1.Controls.Add($Group4)

    $Group5 = New-Object System.Windows.Forms.checkbox
    $Group5.Location = New-Object System.Drawing.Size(10,100)
    $Group5.Size = New-Object System.Drawing.Size(100,20)
    $Group5.Text = "Group5"
    $GroupSet1.Controls.Add($Group5)


############################################## end Box Set 1 boxes
    #
    #
############################################## Start Box Set 2 boxes


    $Group6 = New-Object System.Windows.Forms.checkbox
    $Group6.Location = New-Object System.Drawing.Size(10,20)
    $Group6.Size = New-Object System.Drawing.Size(100,20)
    $Group6.Text = "Group6"
    $GroupSet2.Controls.Add($Group6)

    $Group7 = New-Object System.Windows.Forms.checkbox
    $Group7.Location = New-Object System.Drawing.Size(10,40)
    $Group7.Size = New-Object System.Drawing.Size(100,20)
    $Group7.Text = "Group7"
    $GroupSet2.Controls.Add($Group7)

    $Group8 = New-Object System.Windows.Forms.checkbox
    $Group8.Location = New-Object System.Drawing.Size(10,60)
    $Group8.Size = New-Object System.Drawing.Size(100,20)
    $Group8.Text = "Group8"
    $GroupSet2.Controls.Add($Group8)

    $Group9 = New-Object System.Windows.Forms.checkbox
    $Group9.Location = New-Object System.Drawing.Size(10,80)
    $Group9.Size = New-Object System.Drawing.Size(100,20)
    $Group9.Text = "Group9"
    $GroupSet2.Controls.Add($Group9)

    $Group10 = New-Object System.Windows.Forms.checkbox
    $Group10.Location = New-Object System.Drawing.Size(10,100)
    $Group10.Size = New-Object System.Drawing.Size(100,20)
    $Group10.Text = "Group10"
    $GroupSet2.Controls.Add($Group10)

    $Group11 = New-Object System.Windows.Forms.checkbox
    $Group11.Location = New-Object System.Drawing.Size(10,120)
    $Group11.Size = New-Object System.Drawing.Size(100,20)
    $Group11.Text = "Group11"
    $GroupSet2.Controls.Add($Group11)

############################################## End Office boxes
    #
    #
############################################## Start Other boxes

    $Group12 = New-Object System.Windows.Forms.checkbox
    $Group12.Location = New-Object System.Drawing.Size(10,20)
    $Group12.Size = New-Object System.Drawing.Size(100,20)
    $Group12.Text = "Group12"
    $GroupSet3.Controls.Add($Group12)

    $Group13 = New-Object System.Windows.Forms.checkbox
    $Group13.Location = New-Object System.Drawing.Size(10,40)
    $Group13.Size = New-Object System.Drawing.Size(100,20)
    $Group13.Text = "Group13"
    $GroupSet3.Controls.Add($Group13)

    $Group14 = New-Object System.Windows.Forms.checkbox
    $Group14.Location = New-Object System.Drawing.Size(10,60)
    $Group14.Size = New-Object System.Drawing.Size(100,20)
    $Group14.Text = "Group14"
    $GroupSet3.Controls.Add($Group14)

    $Group15 = New-Object System.Windows.Forms.checkbox
    $Group15.Location = New-Object System.Drawing.Size(10,80)
    $Group15.Size = New-Object System.Drawing.Size(100,20)
    $Group15.Text = "Group15"
    $GroupSet3.Controls.Add($Group15)
	
	$Group16 = New-Object System.Windows.Forms.checkbox
    $Group16.Location = New-Object System.Drawing.Size(10,140)
    $Group16.Size = New-Object System.Drawing.Size(100,20)
    $Group16.Text = "Send Email"
    $GroupSet3.Controls.Add($Group16)
	
############################################## End Other boxes
    #
    #
######################################################################### end check boxes
#
#
############################################## Start Input box

$textBoxText = New-Object System.Windows.Forms.GroupSet1 ##This set makes the individual boxes that house the group options 
$textBoxText.Location = New-Object System.Drawing.Size(10,35) 
$textBoxText.size = New-Object System.Drawing.Size(160,50) 
$textBoxText.text = "Logon ID:"  ##This is where the user will enter their logon ID
$Form.Controls.Add($textBoxText) 

    $textBox = New-Object System.Windows.Forms.TextBox 
    $textBox.Location = New-Object System.Drawing.Point(5,20)
    $textBox.Size = New-Object System.Drawing.Size(150,20)
    $textBox.Text = " " ##What is default to be set in the Logon ID field
    #$textInput = $textBox.text 
    $textBoxText.Controls.Add($textBox) ##This is for the textbox that the user can enter longonID
   
############################################## end Input box
#
#
############################################## Start text fields

$outputBox = New-Object System.Windows.Forms.RichTextBox 
$outputBox.Location = New-Object System.Drawing.Size(250,235) 
$outputBox.Size = New-Object System.Drawing.Size(300,125) 
$outputBox.ScrollBars = "Vertical" ##The box that the Group addions output goes to.
$outputBox.MultiLine = $True   ##Things like "added groups or not added"
$Form.Controls.Add($outputBox) 

############################################## end text fields
#
#
############################################## Start buttons

$Button = New-Object System.Windows.Forms.Button 
$Button.Location = New-Object System.Drawing.Size(50,100) 
$Button.Size = New-Object System.Drawing.Size(60,40) 
$Button.Text = "Add AD Groups"  ##Button to add groups to profile
$Form.Controls.Add($Button)  ## Parts for the button safe format as other things inside form 

############################################## end buttons
#
#
$Form.Add_Shown({$Form.Activate()})
[void] $Form.ShowDialog()

## Websites to help
##https://blogs.technet.microsoft.com/stephap/2012/04/23/building-forms-with-powershell-part-1-the-form/
##http://serverfixes.com/powershell-checkboxes
##https://sysadminemporium.wordpress.com/2013/01/31/powershell-gui-for-your-scripts-episode-4/

#########################################################################||Origional creator Owen Lloyd-Jones.||#########################################################################
