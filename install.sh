version='5.3.2'
linux='20.04'

echo -e "\e[1mInstalling Swift\e[0m"
echo
sudo echo
wget https://swift.org/builds/swift-${version}-release/ubuntu2004/swift-${version}-RELEASE/swift-${version}-RELEASE-ubuntu${linux}.tar.gz
sudo apt install clang libcurl3 libpython2.7 libpython2.7-dev -y
tar xvf "swift-${version}-RELEASE-ubuntu${linux}.tar.gz"
rm "swift-${version}-RELEASE-ubuntu${linux}.tar.gz"
sudo mv "swift-${version}-RELEASE-ubuntu${linux}" /usr/share
sudo mv "/usr/share/swift-${version}-RELEASE-ubuntu${linux}/" /usr/share/swift
echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
sudo apt install --reinstall libpython2.7 -y
