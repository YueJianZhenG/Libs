cd lua5.3
cmake CMakeLists.txt
make -j8

cd ../mysql
cmake CMakeLists.txt
make -j8

cd ../redis
cmake CMakeLists.txt
make -j8

cd ../protobuf/cmake
cmake CMakeLists.txt
make -j8

cd ../../
mkdir lib
cp ./lua5.3/libLua53.a ./lib
cp ./mysql/extra/yassl/libyassl.a ./lib
cp ./mysql/libmysql/libmysqlclient.a ./lib
cp ./redis/libhiredis.a ./lib
cp ./protobuf/cmake/libprotobuf.a ./lib