//
//  AppDelegate.swift
//  Tokieso (macOS)
//
//  Created by Poren Chiang on 2021/8/1.
//

import Foundation
import AppKit

final class AppDelegate : NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        if let window = NSApplication.shared.windows.first {
            window.titleVisibility = .hidden
            window.titlebarAppearsTransparent = true
            window.backgroundColor = NSColor(named: "BackgroundColor")
            window.styleMask.insert(.fullSizeContentView)
        }
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }
}
