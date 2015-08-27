import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport.a"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: []
    frameworksRelease: ["CoreServices", "Foundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap_debug"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_BOOTSTRAPPED", "QT_LITE_UNICODE", "QT_NO_CAST_TO_ASCII", "QT_NO_CODECS", "QT_NO_DATASTREAM", "QT_NO_LIBRARY", "QT_NO_QOBJECT", "QT_NO_SYSTEMLOCALE", "QT_NO_THREAD", "QT_NO_UNICODETABLES", "QT_NO_USING_NAMESPACE", "QT_NO_DEPRECATED", "QT_NO_TRANSLATION", "QT_QMAKE_LOCATION=\\\"/Users/sakari/Qt/5.4/ios/qtbase/bin/qmake\\\""]
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include", "/Users/sakari/Qt/5.4/ios/include/QtCore", "/Users/sakari/Qt/5.4/ios/include/QtXml", "/Users/sakari/Qt/5.4/ios/include/QtCore/5.4.1", "/Users/sakari/Qt/5.4/ios/include/QtCore/5.4.1/QtCore", "/Users/sakari/Qt/5.4/ios/include/QtXml/5.4.1", "/Users/sakari/Qt/5.4/ios/include/QtXml/5.4.1/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
