import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ScriptTools"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5Widgets_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui_debug.a", "qtharfbuzzng_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Script_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5PlatformSupport.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m", "/Users/sakari/Qt/5.4/ios/lib/libQt5Widgets.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui.a", "qtharfbuzzng", "/Users/sakari/Qt/5.4/ios/lib/libQt5Script.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation", "UIKit", "CoreFoundation", "Foundation", "CoreText", "CoreGraphics", "OpenGLES"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation", "UIKit", "CoreFoundation", "Foundation", "CoreText", "CoreGraphics", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5ScriptTools_debug"
    libNameForLinkerRelease: "Qt5ScriptTools"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/lib/libQt5ScriptTools_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/lib/libQt5ScriptTools.a"
    cpp.defines: ["QT_SCRIPTTOOLS_LIB"]
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include", "/Users/sakari/Qt/5.4/ios/include/QtScriptTools"]
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}