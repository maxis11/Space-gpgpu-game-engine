TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH = ../backend \
              ../system
LIBPATH = ../backend \
          ../system

SOURCES += main.cpp

HEADERS += \
    backend/engInit.hpp

LIBS += -lbackend -lsystem
QMAKE_CXXFLAGS += -std=c++11
unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += glfw3
unix|win32: LIBS += -lOpenCL -lGL -lGLEW
