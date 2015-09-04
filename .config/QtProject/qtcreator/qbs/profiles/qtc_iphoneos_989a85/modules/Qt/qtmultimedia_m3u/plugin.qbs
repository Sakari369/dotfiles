import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qtmultimedia_m3u"
    Depends { name: "Qt"; submodules: []}

    className: "QM3uPlaylistPlugin"
    staticLibsDebug: ["z", "m", "QtPlatformSupport_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Multimedia_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui_debug.a", "qtharfbuzzng_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Network_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "QtPlatformSupport", "/Users/sakari/Qt/5.4/ios/lib/libQt5Multimedia.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui.a", "qtharfbuzzng", "/Users/sakari/Qt/5.4/ios/lib/libQt5Network.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["UIKit", "CoreFoundation", "Foundation", "Security", "SystemConfiguration", "CoreText", "CoreGraphics", "OpenGLES"]
    frameworksRelease: ["UIKit", "CoreFoundation", "Foundation", "Security", "SystemConfiguration", "CoreText", "CoreGraphics", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qtmultimedia_m3u_debug"
    libNameForLinkerRelease: "qtmultimedia_m3u"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/plugins/playlistformats/libqtmultimedia_m3u_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/plugins/playlistformats/libqtmultimedia_m3u.a"
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
