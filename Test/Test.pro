QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QT += multimedia multimediawidgets
CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h \
    ../cpcameraviewfinder.h \
    ../cpcamera.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    Test_zh_CN.ts
CONFIG += lrelease
CONFIG += embed_translations


INCLUDEPATH += $$PWD/../

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../build-cp-multi-camera-Desktop_Qt_5_12_12_MSVC2017_64bit-Debug/debug -lcp-multi-camera
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../build-cp-multi-camera-Desktop_Qt_5_12_12_MSVC2017_64bit-Debug/debug -lcp-multi-camera
else:unix: LIBS += -L$$PWD/libs/x64/ -lcp-multi-camera
