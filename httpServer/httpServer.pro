TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
SOURCES += \
        http_conn.cpp \
        locker.cpp \
        main.cpp \
        test.cpp

HEADERS += \
    http_conn.h \
    locker.h \
    test.h \
    threadpool.h\
QMAKE_CFLAGS  += -lpthread
LIBS +=-lpthread
