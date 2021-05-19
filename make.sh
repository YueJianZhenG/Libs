cd lua5.3
mkdir build
cd build
cmake ../CMakeLists.txt
make

cd ../../mysql
mkdir build
cd build
cmake ../extra/CMakeLists.txt
make

cd ../../redis
mkdir build
cmake ../CMakeLists.txt
make

cd ../../prptobuf
mkdir build
cmake ../cmake/CMakeLists.txt
make

cd ../../
mkdir lib
cp ./lua5.3/build/*.a ./
cp ./mysql/build/*.a ./
cp ./redis/build/*.a ./
cp ./prptobuf/build/*.a ./