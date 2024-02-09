apt-get remove -y '^ghc*'
apt-get remove -y '^dotnet-.*'
apt-get remove -y '^llvm-.*'
apt-get remove -y 'php.*'
apt-get remove -y '^temurin-.*-jdk'
apt-get remove -y azure-cli google-cloud-sdk hhvm google-chrome-stable microsoft-edge-stable firefox powershell mono-devel
apt-get autoremove -y
apt-get clean
rm -rf /usr/share/dotnet/
rm -rf /usr/share/swift/
rm -rf /usr/local/lib/android/
rm -rf /imagegeneration
rm -rf /opt/hostedtoolcache/CodeQL/
rm -rf /usr/local/julia*
rm -rf /usr/share/kotlinc
rm -rf /usr/local/share/phantomjs*
rm -rf /usr/local/share/boost
rm -rf /usr/share/miniconda
docker rmi $(docker image ls -q --filter "reference=node*")
docker rmi $(docker image ls -q --filter "reference=buildpack*")
docker rmi $(docker image ls -q --filter "reference=alpine*")
docker rmi $(docker image ls -q --filter "reference=ubuntu*")