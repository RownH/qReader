#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<datemodel.h>
#include<QtQml/QtQml>
#include<Reader_book.h>
#include<Book_chapter.h>
#include<book_settings.h>
#include<read_view.h>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    //dateModel model;
    qmlRegisterType<Reader_Book>("Reader", 1, 0, "Reader");
    qmlRegisterType<Book_chapter>("Chapter", 1, 0, "Chapter");
    qmlRegisterType<Book_settings>("Settings", 1, 0, "BookSetting");
    qmlRegisterType<Read_View>("BookShelf",1,0,"BookShelf");
    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("$Model",&model);
    //注册model类型

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
