//
//  DeepView.swift
//  SwiftUIBinding (iOS)
//
//  Created by Alex Nagy on 27.02.2021.
//

import SwiftUI

struct DeepView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    @EnvironmentObject var settings: Settings
    
    @AppStorage("showPassword") var showPassword = false
    
    var body: some View {
        VStack(spacing: 12) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Back")
            }
            
            Toggle(isOn: $showPassword) {
                Text("Show password")
            }
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Deep View")
    }
}

struct DeepView_Previews: PreviewProvider {
    static var previews: some View {
        DeepView()
    }
}
