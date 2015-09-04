import qbs 1.0
import '../QtPlugin.qbs' as QtPlugin

QtPlugin {
    qtModuleName: "qavfcamera"
    Depends { name: "Qt"; submodules: []}

    className: "AVFServicePlugin"
    staticLibsDebug: ["z", "m", "QtPlatformSupport_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Multimedia_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui_debug.a", "qtharfbuzzng_debug", "/Users/sakari/Qt/5.4/ios/lib/libQt5Network_debug.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core_debug.a", "z", "m"]
    staticLibsRelease: ["z", "m", "QtPlatformSupport", "/Users/sakari/Qt/5.4/ios/lib/libQt5Multimedia.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Gui.a", "qtharfbuzzng", "/Users/sakari/Qt/5.4/ios/lib/libQt5Network.a", "/Users/sakari/Qt/5.4/ios/lib/libQt5Core.a", "z", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/sakari/Qt/5.4/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["AudioToolbox", "CoreAudio", "QuartzCore", "AVFoundation", "CoreMedia", "CoreVideo", "UIKit", "CoreFoundation", "Foundation", "Security", "SystemConfiguration", "CoreText", "CoreGraphics", "OpenGLES"]
    frameworksRelease: ["AudioToolbox", "CoreAudio", "QuartzCore", "AVFoundation", "CoreMedia", "CoreVideo", "UIKit", "CoreFoundation", "Foundation", "Security", "SystemConfiguration", "CoreText", "CoreGraphics", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "qavfcamera_debug"
    libNameForLinkerRelease: "qavfcamera"
    libFilePathDebug: "/Users/sakari/Qt/5.4/ios/plugins/mediaservice/libqavfcamera_debug.a"
    libFilePathRelease: "/Users/sakari/Qt/5.4/ios/plugins/mediaservice/libqavfcamera.a"
    cpp.libraryPaths: ["/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib", "/Users/sakari/Qt/5.4/ios/lib"]
    isStaticLibrary: true
}
