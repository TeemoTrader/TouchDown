//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import SwiftUI
//MARK: - ADDED ENVIRONEMNTOBJECT MODIFIER TO SHOW THE SHOP VIEW TO EVERIONE WITH SHARED DATA
@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
