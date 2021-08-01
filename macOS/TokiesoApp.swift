//
//  TokiesoApp.swift
//  macOS
//
//  Created by Poren Chiang on 2021/8/1.
//

import SwiftUI
import AppKit

@main
struct TokiesoApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 640, maxWidth: .infinity, minHeight: 480, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.top)
                .background(Color("BackgroundColor"))
        }
    }
}
