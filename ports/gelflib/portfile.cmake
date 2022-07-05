include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO rastignacc/gelflib
    REF fe5dfa3243a4cafc9dd1df5c4fcf34ec19889ea5
    SHA512 69c667cd4b3c80544cf95745b40c0033f18cb196b7ec508b7e46d2272215f446099efb0809878a67f5043eab7cdb4ad35ba170ca39b8d6f4534bb96f961cf132
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/gelflib RENAME copyright)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
