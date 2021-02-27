//
//  ContentView.swift
//  Shared
//
//  Created by Alex Nagy on 27.02.2021.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var password = ""
    
    @StateObject private var viewModel = ContentViewModel()
    
    @EnvironmentObject var settings: Settings
    
    @AppStorage("showPassword") var showPassword = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                if showPassword {
                    Text(viewModel.sensitiveData.password)
                }
                
                SesitiveDataView(password: $viewModel.sensitiveData.password)
                
                NavigationLink(destination: DetailView(viewModel: viewModel)) {
                    Text("Navigate")
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Content View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
