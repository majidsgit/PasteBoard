//
//  PasteBoardApp.swift
//  PasteBoard
//
//  Created by developer on 6/3/22.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    // MARK: - PROPERTIES
    var timer: Timer?
    let pasteboard: NSPasteboard = .general
    var lastChangeCount: Int = 0
    let notifier = PasteBoardNotificationCenter.sharedInstance
    
    
    // MARK: - FUNCTIONS
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { (t) in
            if self.lastChangeCount != self.pasteboard.changeCount {
                self.lastChangeCount = self.pasteboard.changeCount
                NotificationCenter.default.post(name: .NSPasteboardDidChange, object: self.pasteboard)
            }
        }
        NotificationCenter.default.addObserver(notifier.self, selector: #selector(notifier.onPasteboardChanged), name: .NSPasteboardDidChange, object: nil)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        if let timer = timer {
            timer.invalidate()
        }
    }
}

@main
struct PasteBoardApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(width: 1280, height: 720)
                .background(
                    Color.background
                        .ignoresSafeArea()
                )
                .onReceive(NotificationCenter.default.publisher(for: NSApplication.willUpdateNotification), perform: { _ in
                    for window in NSApplication.shared.windows {
                        
                        window.standardWindowButton(.zoomButton)?.isEnabled = false
                        window.standardWindowButton(.zoomButton)?.isHidden = true
                        
                        window.standardWindowButton(.miniaturizeButton)?.isEnabled = false
                        window.standardWindowButton(.miniaturizeButton)?.isHidden = true
                        
                        window.standardWindowButton(.closeButton)?.isHidden = true
                        
                        window.titleVisibility = .hidden
                    }
                })
        }
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandGroup(replacing: .newItem, addition: { })
        }
    }
}
