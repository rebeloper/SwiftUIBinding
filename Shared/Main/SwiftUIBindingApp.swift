//
//  SwiftUIBindingApp.swift
//  Shared
//
//  Created by Alex Nagy on 27.02.2021.
//

import SwiftUI

@main
struct SwiftUIBindingApp: App {
    
    @StateObject var settings = Settings()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
        }
    }
}
