from centos
MAINTAINER borders, Inc.

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum localinstall http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-11.ius.centos6.noarch.rpm

# Update Current Image
RUN yum install -y git make gcc dstat postmaster
RUN yum update -y

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

# Install PHP De 
