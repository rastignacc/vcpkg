include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO rastignacc/gelflib
    REF a9a5f927fc2190cf79aa732325dcedbdf193185b
    SHA512 dfb0db6c2513c34f2945cead54a077cdf59cec17cace40d86ff0142771fb3e2e7aab6115f317a17c5e0b28aa8d6ecf2ed4e6f584beecccf3b8c439e54f2630ae
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/gelflib RENAME copyright)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(COPY ${SOURCE_PATH}/src/GELFConfig.hpp DESTINATION ${CURRENT_INSTALLED_DIR}/include)