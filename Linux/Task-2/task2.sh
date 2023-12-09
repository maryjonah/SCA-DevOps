# install the build tools needed
echo "Welcome to NGINX source code builder"
echo '------------------------------------'

echo '-------------------------------------------'
echo "Step 1 => Installing the build tools needed"
echo '-------------------------------------------'
sudo apt install build-essential libpcre3 libpcre3-dev zlib1g-dev libssl-dev

# downloads the nginx source code
echo '-------------------------------------------'
echo "Step 2 => Downloading the nginx source code"
echo '-------------------------------------------'
wget http://nginx.org/download/nginx-1.23.1.tar.gz

# Extract the zipped folder without showing verbose output
echo '----------------------------------------'
echo "Step 3 => Extract the zipped source code"
echo '----------------------------------------'
tar -zxf nginx-1.23.1.tar.gz 


# Change into the extracted folder 
cd nginx-1.23.1

# Installing NGINX at /usr/local/nginx folder, enable the http and http-ssl modules
echo '--------------------------------------------------------'
echo "Step 4 => Configure and enable http and http-ssl modules"
echo '--------------------------------------------------------'
./configure --prefix=/usr/local/nginx --with-http_ssl_module

echo '-----------------------------------'
echo "Step 5 => Compile and install NGINX"
echo '-----------------------------------'
make
sudo make install

echo '---------------------------------'
# Start NGINX
echo '---------------------------------'
echo "Step 6 => Starting the web server"
echo '---------------------------------'
sudo /usr/local/nginx/sbin/nginx


# Inform user to open a web browser to see the nginx homepage
echo "Congratulationsssss 🎊 🎉 you have successfully "

