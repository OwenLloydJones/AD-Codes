# Multiple choice addition script.
This is a script that will allow you add a number of frequently added groups to a single user. This can be things such a adding common groups
to a new user ID instead of going through and adding each one, one by one.

This is very useful. This is done in my company for adding things such as a set of groups such as Microsoft office applications,
the users need access to the groups to use them so having each on avilable on here means they dont need to be added to the profiles manually
by searching the group name.

# How to use.
In this code the group names will need to be changed,
Group1, Group2... Will be the name of the group that is being given e.g. Microsoft Office - Word. 
The GroupName1 & GroupName2... Will be the name of thr group on AD e.g. MicrosoftOfficeWord2010Home
Ontop of this the domain name will need to be changed, this is the name of the network that you will be accessing.

This script has also ".\EmailTemplate.oft" this is for the "send email" template which will popup to send to the user when you have added their groups 
Also there is ".\background_image.png" which is the background image that will be put onto the application. 
The application size is 620x450 but the boxes for each "GroupSet" will cover up the image so there is space in the bottom left corner for a logo/Picture.
