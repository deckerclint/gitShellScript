#!/bin/bash
#-------------------Bash Specific Notes and Commands-------------------------------------------------------
#The first line of the script determines the shell to start. 
#The first two characters of the first line should be #!, then follows the 
#path to the shell that should interpret the commands that follow. 
#Blank lines are also considered to be lines, so don't start your script 
#with an empty line.

# cat filname | command will print full text/code of file to screen.
# chmod u+x filname | will give the appropriate permissions for the script to run in bash.
# ./filename | typed into the command line will execute the script.


#---------------------------Pull GITHUB repo--------------------------------

echo "Choose a action:"
echo "1. Choose one if you want to pull your theme repo and put it in the Wordpress Theme folder."
echo "2. Choose two if you want to pull your plugin repo and put it in the Wordpress Plugin folder."
echo "3. Choice two push Wordpress Theme to Github repo."
echo ""
read choice 
case $choice in


1)
#      Choice 1
#Choice one pull Github theme repo it will put the theme in the correct Wordpress folder
#Get Input from user, -t is timing the input and will shut program 
#down in 90 seconds if nothing is entered.
#-p Displays a prompt to the user without a newline.
echo "Enter your GitHub credentials, this script will pull your theme repo and put it in the Wordpress Theme folder."
read -t 90 -p "Enter the Git Hub user email:" gitHubUserEmail
read -t 90 -p "Enter the Git Hub user name:" gitHubUserName
read -t 90 -p "Enter the Git Wordpress Theme repo name:" gitHubRepoName

# This line makes a new folder.
mkdir wp-content/themes/$gitHubRepoName

# This line changes directory to new folder.
cd wp-content/themes/$gitHubRepoName

# This line initializes git in the new folder.
git init

# GITHUB credentials.
git config user.email $gitHubUserEmail
git config user.name $gitHubUserName

# This line pulls the code 
git pull https://github.com/$gitHubUserName/$gitHubRepoName.git
echo "-------------Finished------------------"
;;



2)
#      Choice 2
#Choice two pull Github plugin repo it will put the plugin in the correct Wordpress folder
#Get Input from user, -t is timing the input and will shut program 
#down in 90 seconds if nothing is entered.
#-p Displays a prompt to the user without a newline.
read "Enter your GitHub credentials, this script will pull your plugin repo and put it in the Wordpress Plugin folder."
read -t 90 -p "Enter the Git Hub user email:" gitHubUserEmail
read -t 90 -p "Enter the Git Hub user name:" gitHubUserName
read -t 90 -p "Enter the Git Wordpress Plugin repo name:" gitHubRepoName

# This line makes a new folder.
mkdir wp-content/plugins/$gitHubRepoName

# This line changes directory to new folder.
cd wp-content/plugins/$gitHubRepoName

# This line initializes git in the new folder.
git init

# GITHUB credentials.
git config user.email $gitHubUserEmail
git config user.name $gitHubUserName

# This line pulls the code 
git pull https://github.com/$gitHubUserName/$gitHubRepoName.git
echo "-------------Finished------------------"
;;

3)
#      Choice 3
#Choice two push Wordpress Theme to Github repo.

;;

4)
#      Choice 4
#Choice two push Wordpress Plugin to Github repo.

;;




*)
echo "Please enter a correct number."

esac


