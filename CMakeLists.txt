cmake_minimum_required(VERSION 3.20)
project(pfr_non_boost LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(CMakePackageConfigHelpers)

add_library(pfr_non_boost INTERFACE)

target_include_directories(pfr_non_boost INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

install(TARGETS pfr_non_boost EXPORT pfr_non_boost-targets)
install(DIRECTORY include/ DESTINATION include)
install(EXPORT pfr_non_boost-targets
    FILE pfr_non_boost-targets.cmake
    NAMESPACE pfr_non_boost::
    DESTINATION share/pfr_non_boost
)

configure_package_config_file(
    cmake/pfr_non_boost-config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/pfr_non_boost-config.cmake"
    INSTALL_DESTINATION share/pfr_non_boost
)
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/pfr_non_boost-config.cmake"
    DESTINATION share/pfr_non_boost
)
