#!/bin/bash 
############################################################################
#
#                                       
#                          ./+o+-       
#                  yyyyy- -yyyyyy+      
#               ://+//////-yyyyyyo      
#           .++ .:/++++++/-.+sss/`      
#         .:++o:  /++++++++/:--:/-      
#        o:+o+:++.`..```.-/oo+++++/     
#       .:+o:+o/.          `+sssoo+/    
#  .++/+:+oo+o:`             /sssooo.   
# /+++//+:`oo+o               /::--:.   
# \+/+o+++`o++o               ++////.   
#  .++.o+++oo+:`             /dddhhh.   
#       .+.o+oo:.          `oddhhhh+    
#        \+.++o+o``-````.:ohdhhhhh+     
#         `:o+++ `ohhhhhhhhyo++os:      
#           .o:`.syhhhhhhh/.oo++o`      
#               /osyyyyyyo++ooo+++/     
#                   ````` +oo+++o\:    
#                          `oo++.      
#                                
#
#
############################################################################
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
# More from Erik Dubois
#
# Aurora conky and all its components are installed via an other script
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/
#
# Sardi icons can be found at
# http://sourceforge.net/projects/sardi/
#
# Yltra flat icons can be found at 
# https://github.com/erikdubois/yltra-flat-icon-theme
############################################################################
#
# the option -y has been added. It will autoinstall all. Omit if you do not want that.
#
############################################################################


############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
############################################################################

echo "fixing hardcoded icons"

echo "fixing mintbackup_mime.desktop"
old="Icon=\/usr\/share\/pixmaps\/mintbackup\/icon.png"
new="Icon=mintbackup"
location="/usr/share/applications/mintbackup_mime.desktop"
sudo sed -i  "s/$old/$new/g" $location
echo "done"

echo "fixing mintbackup.desktop"
old="Icon=\/usr\/share\/pixmaps\/mintbackup\/icon.svg"
new="Icon=mintbackup"
location="/usr/share/applications/mintbackup.desktop"
sudo sed -i  "s/$old/$new/g" $location
echo "done"


# KDE if available

echo "fixing kde4-mintbackup"
old="Icon=\/usr\/share\/pixmaps\/mintbackup\/icon.png"
new="Icon=mintbackup"
location="/usr/share/applications/kde4/mintbackup.desktop"
sudo sed -i  "s/$old/$new/g" $location


echo "fixing kde4-mintsources"
old="Icon=\/usr\/share\/icons\/hicolor\/scalable\/apps\/software-sources.svg"
new="Icon=software-sources"
location="/usr/share/applications/kde4/mintsources.desktop"
sudo sed -i  "s/$old/$new/g" $location

echo "fixing kde4-mintupload"
old="Icon=\/usr\/share\/pixmaps\/mintupload\/icon.svg"
new="Icon=mintupload"
location="/usr/share/applications/kde4/mintupload.desktop"
sudo sed -i  "s/$old/$new/g" $location




echo "done"