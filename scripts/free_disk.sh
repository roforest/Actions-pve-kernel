apt purge -y '^ghc*'
apt purge -y '^dotnet-.*'
apt purge -y '^llvm-.*'
apt purge -y 'php.*'
apt purge -y '^temurin-.*-jdk'
apt purge -y azure-cli google-cloud-sdk hhvm google-chrome-stable microsoft-edge-stable firefox powershell mono-devel mongodb* libpq-dev moby-* cabal* clang*
apt-get autoremove -y
apt-get autoclean -y
rm -rf /opt/*
rm -rf /imagegeneration
rm -rf /usr/share/dotnet/
rm -rf /usr/share/swift/
rm -rf /usr/share/kotlinc
rm -rf /usr/share/miniconda
rm -rf /usr/share/sbt
rm -rf /usr/local/lib/android/
rm -rf /usr/local/julia*
rm -rf /usr/local/share/phantomjs*
rm -rf /usr/local/share/boost
rm -rf /usr/lib/jvm
docker rmi $(docker image ls -q --filter "reference=node*")
docker rmi $(docker image ls -q --filter "reference=buildpack*")
docker rmi $(docker image ls -q --filter "reference=alpine*")
docker rmi $(docker image ls -q --filter "reference=ubuntu*")