cmake_minimum_required(VERSION 3.16)

project(untitled8 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package(Qt6 6.5 REQUIRED COMPONENTS Quick ShaderTools)

find_package(ZLIB)
find_package(TagLib 2.0.0 REQUIRED)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_qml_module(appuntitled8
    URI untitled8
    VERSION 1.0
    QML_FILES
    Main.qml
    RESOURCES i.png
    QML_FILES MusicPathView.qml Lable.qml
    RESOURCES Lil_Yachty_—_Lil_Boat.jpeg  Jeffery_young_thug.jpg Nectar.png Ballads_1.png imagess.jpeg kk.png
    SOURCES imagefromusic.cpp imagefromusic.h

)



qt6_add_shaders(appuntitled8 "Shaders"
    PREFIX
        "/"
    FILES
        testfrag.frag
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appuntitled8 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appuntitled8
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appuntitled8
    PRIVATE Qt6::Quick Qt6::ShaderTools TagLib::tag
)

include(GNUInstallDirs)
install(TARGETS appuntitled8
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
