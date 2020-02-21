#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>

static const unsigned char qt_resource_tree[] = {
0,
0,0,0,0,2,0,0,0,5,0,0,0,1,0,0,1,
24,0,2,0,0,0,8,0,0,0,11,0,0,0,70,0,
2,0,0,0,2,0,0,0,9,0,0,0,152,0,2,0,
0,0,3,0,0,0,6,0,0,0,8,0,0,0,0,0,
1,0,0,0,0,0,0,0,48,0,0,0,0,0,1,0,
0,0,0,0,0,0,168,0,0,0,0,0,1,0,0,0,
0,0,0,0,242,0,0,0,0,0,1,0,0,0,0,0,
0,0,208,0,0,0,0,0,1,0,0,0,0,0,0,0,
84,0,0,0,0,0,1,0,0,0,0,0,0,0,118,0,
0,0,0,0,1,0,0,0,0,0,0,2,20,0,0,0,
0,0,1,0,0,0,0,0,0,2,50,0,0,0,0,0,
1,0,0,0,0,0,0,1,80,0,0,0,0,0,1,0,
0,0,0,0,0,1,194,0,0,0,0,0,1,0,0,0,
0,0,0,1,38,0,0,0,0,0,1,0,0,0,0,0,
0,1,152,0,0,0,0,0,1,0,0,0,0,0,0,1,
110,0,0,0,0,0,1,0,0,0,0,0,0,1,234,0,
0,0,0,0,1,0,0,0,0};
static const unsigned char qt_resource_names[] = {
0,
1,0,0,0,47,0,47,0,17,2,39,52,28,0,71,0,
108,0,111,0,98,0,101,0,108,0,95,0,79,0,98,0,
106,0,101,0,99,0,116,0,46,0,113,0,109,0,108,0,
8,8,1,90,92,0,109,0,97,0,105,0,110,0,46,0,
113,0,109,0,108,0,4,0,5,207,199,0,86,0,105,0,
101,0,119,0,14,9,63,209,156,0,82,0,101,0,97,0,
100,0,101,0,114,0,86,0,105,0,101,0,119,0,46,0,
113,0,109,0,108,0,14,10,23,107,60,0,67,0,97,0,
116,0,97,0,66,0,111,0,116,0,116,0,111,0,109,0,
46,0,113,0,109,0,108,0,5,0,87,103,192,0,80,0,
111,0,112,0,117,0,112,0,17,10,176,87,156,0,83,0,
101,0,116,0,116,0,105,0,110,0,103,0,66,0,111,0,
116,0,116,0,111,0,109,0,46,0,113,0,109,0,108,0,
14,13,97,184,220,0,66,0,114,0,105,0,103,0,104,0,
116,0,78,0,101,0,115,0,115,0,46,0,113,0,109,0,
108,0,16,11,224,157,92,0,80,0,111,0,112,0,117,0,
112,0,67,0,97,0,116,0,97,0,108,0,111,0,103,0,
46,0,113,0,109,0,108,0,4,0,5,10,189,0,73,0,
116,0,101,0,109,0,18,11,49,135,60,0,66,0,111,0,
111,0,107,0,95,0,83,0,104,0,101,0,108,0,102,0,
73,0,116,0,101,0,109,0,46,0,113,0,109,0,108,0,
12,5,233,6,60,0,116,0,101,0,115,0,116,0,73,0,
116,0,101,0,109,0,46,0,113,0,109,0,108,0,18,13,
21,47,124,0,83,0,101,0,116,0,116,0,105,0,110,0,
103,0,66,0,117,0,116,0,116,0,111,0,110,0,49,0,
46,0,113,0,109,0,108,0,18,13,20,47,124,0,83,0,
101,0,116,0,116,0,105,0,110,0,103,0,66,0,117,0,
116,0,116,0,111,0,110,0,50,0,46,0,113,0,109,0,
108,0,17,10,209,67,156,0,83,0,101,0,116,0,116,0,
105,0,110,0,103,0,66,0,117,0,116,0,116,0,111,0,
110,0,46,0,113,0,109,0,108,0,18,13,23,47,124,0,
83,0,101,0,116,0,116,0,105,0,110,0,103,0,66,0,
117,0,116,0,116,0,111,0,110,0,51,0,46,0,113,0,
109,0,108,0,12,0,225,6,60,0,76,0,105,0,115,0,
116,0,73,0,116,0,101,0,109,0,46,0,113,0,109,0,
108,0,12,3,148,152,60,0,66,0,111,0,111,0,107,0,
73,0,116,0,101,0,109,0,46,0,113,0,109,0,108};
static const unsigned char qt_resource_empty_payout[] = { 0, 0, 0, 0, 0 };
QT_BEGIN_NAMESPACE
extern Q_CORE_EXPORT bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);
QT_END_NAMESPACE
namespace QmlCacheGeneratedCode {
namespace _0x5f_Item_BookItem_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Popup_PopupCatalog_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_ListItem_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Popup_BrightNess_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_View_CataBottom_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_SettingButton3_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__main_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_SettingButton_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_SettingButton2_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_View_ReaderView_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_SettingButton1_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Popup_SettingBottom_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_testItem_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__Globel_Object_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f_Item_Book_ShelfItem_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/BookItem.qml"), &QmlCacheGeneratedCode::_0x5f_Item_BookItem_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Popup/PopupCatalog.qml"), &QmlCacheGeneratedCode::_0x5f_Popup_PopupCatalog_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/ListItem.qml"), &QmlCacheGeneratedCode::_0x5f_Item_ListItem_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Popup/BrightNess.qml"), &QmlCacheGeneratedCode::_0x5f_Popup_BrightNess_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/View/CataBottom.qml"), &QmlCacheGeneratedCode::_0x5f_View_CataBottom_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/SettingButton3.qml"), &QmlCacheGeneratedCode::_0x5f_Item_SettingButton3_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/main.qml"), &QmlCacheGeneratedCode::_0x5f__main_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/SettingButton.qml"), &QmlCacheGeneratedCode::_0x5f_Item_SettingButton_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/SettingButton2.qml"), &QmlCacheGeneratedCode::_0x5f_Item_SettingButton2_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/View/ReaderView.qml"), &QmlCacheGeneratedCode::_0x5f_View_ReaderView_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/SettingButton1.qml"), &QmlCacheGeneratedCode::_0x5f_Item_SettingButton1_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Popup/SettingBottom.qml"), &QmlCacheGeneratedCode::_0x5f_Popup_SettingBottom_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/testItem.qml"), &QmlCacheGeneratedCode::_0x5f_Item_testItem_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Globel_Object.qml"), &QmlCacheGeneratedCode::_0x5f__Globel_Object_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/Item/Book_ShelfItem.qml"), &QmlCacheGeneratedCode::_0x5f_Item_Book_ShelfItem_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.version = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
QT_PREPEND_NAMESPACE(qRegisterResourceData)(/*version*/0x01, qt_resource_tree, qt_resource_names, qt_resource_empty_payout);
}
const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qml)() {
    ::unitRegistry();
    Q_INIT_RESOURCE(qml_qmlcache);
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qml))
int QT_MANGLE_NAMESPACE(qCleanupResources_qml)() {
    Q_CLEANUP_RESOURCE(qml_qmlcache);
    return 1;
}
