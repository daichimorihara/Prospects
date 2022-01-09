//
//  DelayUpdater.swift
//  Prospects
//
//  Created by Daichi Morihara on 2022/01/08.
//

import Foundation

@MainActor class DelayUpdater: ObservableObject {
    var value = 0 {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) ) {
                self.value += 1
            }
        }
    }
}
