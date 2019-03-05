include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO apache/pulsar
    REF v2.3.0
    SHA512 7b019eede6dd45bef98e2fff7bf775ace8c8dc9a88effb50ea3ff80a1c7f0955c650806a8b98a3947fadce8362455daa93b2c20d8fd454778c2b3b58c03fff55
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}/pulsar-client-cpp
    OPTIONS
    -DBUILD_TESTS=OFF 
    -DBUILD_PYTHON_WRAPPER=OFF
    -DBoost_INCLUDE_DIRS=${CURRENT_PACKAGES_DIR}/include/boost
    -DProtobuf_INCLUDE_DIR=${CURRENT_PACKAGES_DIR}/protobuf/google/protobuf
    -DProtobuf_LIBRARIES=${CURRENT_PACKAGES_DIR}/lib/libprotobuf.a
)

vcpkg_install_cmake()