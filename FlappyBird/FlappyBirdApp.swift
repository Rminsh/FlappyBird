//
//  FlappyBirdApp.swift
//  FlappyBird
//
//  Created by Armin on 8/17/22.
//

import SwiftUI

@main
struct FlappyBirdApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                #if os(macOS)
                .task {
                    // Resize on init and only corners
                    let frame = NSApp.mainWindow?.frame
                    NSApp.mainWindow?.setFrame(
                        NSRect(
                            origin: frame?.origin ?? CGPoint(x: 0, y: 0),
                            size: CGSize(width: 400, height: 800)
                        ),
                        display: true,
                        animate: true
                    )
                    NSApp.windows.forEach  {
                        $0.aspectRatio = NSSize(width: 1, height: 2)
                    }
                }
                #endif
        }
        #if os(macOS)
        .windowStyle(.hiddenTitleBar)
        .windowToolbarStyle(.unified)
        #endif
        
    }
}
