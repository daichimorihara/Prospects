//
//  ProspectsApp.swift
//  Prospects
//
//  Created by Daichi Morihara on 2022/01/08.
//

import SwiftUI

@main
struct ProspectsApp: App {
    @StateObject var prospects = Prospects()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(prospects)
        }
    }
}
