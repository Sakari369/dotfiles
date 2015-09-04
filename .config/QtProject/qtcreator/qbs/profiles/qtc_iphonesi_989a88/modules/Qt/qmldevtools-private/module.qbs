import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["bootstrap-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Bootstrap.a"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: []
    frameworksRelease: ["CoreServices", "Foundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QmlDevTools_debug"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include", "/Users/sakari/Qt/5.4/ios/include/QtQml", "/Users/sakari/Qt/5.4/ios/include/QtQml/5.4.1", "/Users/sakari/Qt/5.4/ios/include/QtQml/5.4.1/QtQml"]
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
