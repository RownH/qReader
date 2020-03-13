QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Book_chapter.cpp \
        Globel_Object_qml.cpp \
        Item_BookItem_qml.cpp \
        Item_Book_ShelfItem_qml.cpp \
        Item_ListItem_qml.cpp \
        Item_SettingButton1_qml.cpp \
        Item_SettingButton2_qml.cpp \
        Item_SettingButton3_qml.cpp \
        Item_SettingButton_qml.cpp \
        Item_testItem_qml.cpp \
        Popup_BrightNess_qml.cpp \
        Popup_PopupCatalog_qml.cpp \
        Popup_SettingBottom_qml.cpp \
        Reader_book.cpp \
        View_CataBottom_qml.cpp \
        View_ReaderView_qml.cpp \
        background_setting.cpp \
        book_settings.cpp \
        curpage_setting.cpp \
        datemodel.cpp \
        font_setter.cpp \
        httpServer/http_conn.cpp \
        httpServer/locker.cpp \
        httpServer/main.cpp \
        httpServer/test.cpp \
        main.cpp \
        main_qml.cpp \
        moc_Book_chapter.cpp \
        moc_Reader_book.cpp \
        moc_book_settings.cpp \
        moc_datemodel.cpp \
        moc_read_view.cpp \
        qmlcache_loader.cpp \
        qrc_qml.cpp \
        qrc_qml_qmlcache.cpp \
        read_view.cpp \
        theme_setting.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Item/BookItem.qml \
    Item/ListItem.qml \
    common/IconButton.qml \
    common/PaperRipple.qml

HEADERS += \
    Book_chapter.h \
    Reader_book.h \
    background_setting.h \
    book_settings.h \
    curpage_setting.h \
    datemodel.h \
    font_setter.h \
    httpServer/http_conn.h \
    httpServer/locker.h \
    httpServer/test.h \
    httpServer/threadpool.h \
    moc_predefs.h \
    read_view.h \
    theme_setting.h
