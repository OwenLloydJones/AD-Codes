# Quick Script 
This code is something that can be edidted quickly before use. 
It is designed to be verstile, allowing the user to change things about it for every use. Meaning each use will be different.
This is a very simple CLI script but it should not be too hard to use.
To use this you may need to go to the correct direcorty. Use this command:
"cd C:\Documents\Codes\QuickScriptCode"
This will be different for you, if you do not know the file location. Open where the code is saved in file explorer and click on the navigation bar and copy it in place of "\Documents..."

To use this the user can either add or remove AD groups from a user profile. This can be done for multiple users at one,
or just one at a time. The benifit to this is that it is very short and simple to underastand. There are 3 things that need to 
be changed to utilise the script.

# How To Use
1) **Adding or Removing.**
    There are lines in the code that unlock the ability to remove or add a group to users. These are lines 11 and 12
    To add groups, put a hashtag (#, to comment the line) at the begginning of line 11 and remove the one from the start of line 12.
    To remove groups, do the opposite, make sure there is a hastag at the start of line 12.
    
2) **Editing the group names.**
     On line 2 there is an array, this is where the groups need to be entered. The group names can be found on AD, you may need to search     the group alone (not on a users profile) to find the full name of it. then paste the group name into the speech marks. This can be         done for one or multiple groups.
     
3) **Editing the Domain.**
    On line 3 there is a variable called $Domain, this needs to be changed to the name of your domian so "company.co.uk" this will tell       the AD code where to look for the users/groups.
    
4) **Selecting users.**
    To edit the users you will need to open the users.txt document and add the users longon ID to the document with the last user followed     by an enter. Then save and run the script This will then add/remove the groups from the users on the .txt doc.
