pragma Singleton
import QtQuick 2.0
import Settings 1.0
import BookShelf 1.0
QtObject{
    id:root;
    property var bookSetting: BookSetting{}
    property var bookShelf: BookShelf{
        currentBook: 0;

    }
}
