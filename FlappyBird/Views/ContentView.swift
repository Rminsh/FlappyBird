//
//  ContentView.swift
//  FlappyBird
//
//  Created by Armin on 8/17/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    
    var scene: SKScene {
        let scene = SKScene(fileNamed: "GameScene") ?? SKScene()
        scene.scaleMode = .aspectFill
        return scene
    }
    
    var body: some View {
        SpriteView(scene: scene)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            #if os(iOS)
            .statusBarHidden()
            #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
