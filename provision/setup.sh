curl -L get.rvm.io | bash -s stable
rvm reload
source /etc/profile.d/rvm.sh
rvm requirements
yum -y install patch libyaml-devel glibc-headers autoconf gcc-c++ glibc-devel patch readline-devel zlib-devel libffi-devel openssl-devel automake libtool bison sqlite-devel

curl -sSL https://rvm.io/mpapis.asc | gpg2 --import
rvm reload

rvm install 2.3.1
rvm use 2.3.1 --default
rvm rubygems current
gem install rails

sudo apt-get install postgresql
sudo su postgres -c "psql -c \"CREATE ROLE andrey SUPERUSER LOGIN PASSWORD 'andrey'\" "

cd /vagrant
bundle install
rake db:create
rake db:migrate
