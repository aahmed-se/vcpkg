include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO aahmed-se/incubator-pulsar
    REF proto2
    SHA512 b1dc98b3a4f82d859648ad322c93d01ee163e2c2376a6a64603cf22dea38a99392f8b7b5e23285680410c229f65ff84f1e844bc66459c4337c5cab067eca1535
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