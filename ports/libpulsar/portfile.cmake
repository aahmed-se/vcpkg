include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO aahmed-se/incubator-pulsar
    REF 076d6f7dbec6c4c0f4aa4d74beaa5c9c8025e45a
    SHA512 64aea7f8d2d215d1665c41b74f77c4a2e97150fa82c0fdc671c7ebbe69217a1bb48b1d5b9820e342a7ace7daa02d40db891963f8a78d7a0817d7a5c50a3d053e
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}/pulsar-client-cpp
    OPTIONS
        -DBUILD_TESTS=OFF 
        -DBUILD_PYTHON_WRAPPER=OFF
        # -DLINK_STATIC=ON
        -DLIB_NAME=pular
        -DLIBRARY_VERSION=2.3.0
)


#vcpkg_build_cmake()
vcpkg_install_cmake()