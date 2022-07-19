QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QT += multimedia multimediawidgets

TEMPLATE = lib
DEFINES += CPMULTICAMERA_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    cpcamera.cpp \
    cpcameraviewfinder.cpp

HEADERS += \
    cp-multi-camera_global.h \
    cpcamera-interface.h \
    cpcamera.h \
    cpcameraviewfinder.h

TRANSLATIONS += \
    cp-multi-camera_zh_CN.ts

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
