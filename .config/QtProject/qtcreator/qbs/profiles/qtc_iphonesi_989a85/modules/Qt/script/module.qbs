import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Script"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation", "CoreFoundation"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation", "CoreFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Script_debug"
    libNameForLinkerRelease: "Qt5Script"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/lib/libQt5Script_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/lib/libQt5Script.a"
    cpp.defines: ["QT_SCRIPT_LIB"]
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include", "/Users/sakari/Qt/5.4/ios/include/QtScript"]
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
