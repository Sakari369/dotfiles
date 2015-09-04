import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "CLucene"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5CLucene_debug"
    libNameForLinkerRelease: "Qt5CLucene"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/lib/libQt5CLucene_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/lib/libQt5CLucene.a"
    cpp.defines: ["QT_CLUCENE_LIB"]
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include", "/Users/sakari/Qt/5.4/ios/include/QtCLucene", "/Users/sakari/Qt/5.4/ios/include/QtCLucene/5.4.1", "/Users/sakari/Qt/5.4/ios/include/QtCLucene/5.4.1/QtCLucene"]
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
