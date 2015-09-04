import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PrintSupport"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Widgets_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui_debug.a", "qtharfbuzzng_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Widgets.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui.a", "qtharfbuzzng", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation", "CoreText", "CoreGraphics", "OpenGLES", "OpenGLES"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation", "CoreText", "CoreGraphics", "OpenGLES", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PrintSupport_debug"
    libNameForLinkerRelease: "Qt5PrintSupport"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/lib/libQt5PrintSupport_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/lib/libQt5PrintSupport.a"
    cpp.defines: ["QT_PRINTSUPPORT_LIB"]
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include", "/Users/sakari/Qt/5.4/ios/include/QtPrintSupport"]
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
