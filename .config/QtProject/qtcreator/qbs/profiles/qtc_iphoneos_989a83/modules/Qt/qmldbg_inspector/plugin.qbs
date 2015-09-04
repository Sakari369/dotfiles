import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qmldbg_inspector"
    Depends { name: "Qt"; submodules: []}

    className: "QtQuick1Plugin"
    staticLibsDebug: ["z", "m", "QtPlatformSupport_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Declarative_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Sql_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5XmlPatterns_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Network_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Widgets_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui_debug.a", "qtharfbuzzng_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Script_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "QtPlatformSupport", "/Users/sakari/Qt/5.4/ios/lib/libQt5Declarative.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Sql.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5XmlPatterns.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Network.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Widgets.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui.a", "qtharfbuzzng", "/Users/sakari/Qt/5.4/ios/lib/libQt5Script.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation", "CoreText", "CoreGraphics", "OpenGLES", "Security", "SystemConfiguration"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation", "CoreText", "CoreGraphics", "OpenGLES", "Security", "SystemConfiguration"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qmldbg_inspector_debug"
    libNameForLinkerRelease: "qmldbg_inspector"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/plugins/qml1tooling/libqmldbg_inspector_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/plugins/qml1tooling/libqmldbg_inspector.a"
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
