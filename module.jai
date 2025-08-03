#if OS == .LINUX || OS == .WINDOWS || OS == .MACOS {
    #load "src/raylib.jai";
} else {
    #assert false, message = "Unsupported OS";
}

#if OS == .MACOS {
    #library,system,link_always "Cocoa";
    #system_library "OpenGL";
    #library,system,link_always "CoreGraphics";
    #system_library "AppKit";
    #library,system,link_always "IOKit";
    #library,system,link_always "CoreFoundation";
}
