import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Test"
    Depends { name: "Qt"; submodules: ["testlib"]}

    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/Users/sakari/Qt/5.4/ios/include/QtTest/5.4.1", "/Users/sakari/Qt/5.4/ios/include/QtTest/5.4.1/QtTest"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
