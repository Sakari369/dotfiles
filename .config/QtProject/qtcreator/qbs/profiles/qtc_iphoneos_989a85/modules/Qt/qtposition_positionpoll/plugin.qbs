import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qtposition_positionpoll"
    Depends { name: "Qt"; submodules: []}

    className: "QGeoPositionInfoSourceFactoryPoll"
    staticLibsDebug: ["z", "m", "QtPlatformSupport_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Positioning_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "QtPlatformSupport", "/Users/sakari/Qt/5.4/ios/lib/libQt5Positioning.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qtposition_positionpoll_debug"
    libNameForLinkerRelease: "qtposition_positionpoll"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/plugins/position/libqtposition_positionpoll_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/plugins/position/libqtposition_positionpoll.a"
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
