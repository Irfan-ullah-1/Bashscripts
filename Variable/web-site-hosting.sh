
# This script is for deploying website on apache web server in centos linux machine
#!/bin/bash
echo " Entering to temp directory"
mydir="/tmp/webfiles"
down="https://www.tooplate.com/zip-templates/2126_antique_cafe.zip"
artif="2126_antique_cafe"
mkdir -p $mydir
cd $mydir
wget $down /dev/null
unzip $artif.zip
cp -rf $artif/* /var/www/html
systemctl start httpd
systemctl restart httpd
echo " to show the status of httpd"
systemctl status httpd
echo "clear the tmp directory"
rm -rf $mydir
echo " List the files in var directory "
ls /var/www/html
