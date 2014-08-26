from centos:centos6
MAINTAINER borders, Inc.

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum localinstall http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-11.ius.centos6.noarch.rpm

# Update Current Image
RUN yum install -y git make gcc dstat postmaster
#RUN yum update -y

# Install Dependencies common
RUN yum install -y  libgmp httpd 



# Install PHP Dependencies for POST
#php
#php-mbstring 
#php-pdo 
#php-cli 
#php-process 
#php-pgsql 
#php-gd 
#php-pear
RUN yum -y install --enablerepo=remi php php-mbstring php-pdo php-cli php-process php-pgsql php-gd php-pear

# Install pear Dependencies for POST

RUN pear install Archive_Tar Archive_Zip-beta Auth_SASL Config Console_Getopt 
RUN pear install HTML_Template_IT Image_Canvas-alpha  Image_Color  Image_Graph-alpha  
RUN pear install Log  Mail  Mail_Mime  Mail_mimeDecode  Net_IPv4 Net_POP3  Net_SMTP  Net_Socket  Net_UserAgent_Detect  Net_UserAgent_Mobile  
RUN pear install Numbers_Roman  Numbers_Words-beta PEAR  Structures_Graph  XML_Parser  XML_RPC  XML_Serializer-beta  
RUN pear install XML_Util  http_request2-alpha System_Daemon-beta
