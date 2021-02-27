//
//  DetailView.swift
//  SwiftUIBinding (iOS)
//
//  Created by Alex Nagy on 27.02.2021.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            SesitiveDataView(password: $viewModel.sensitiveData.password)
            
            NavigationLink(destination: DeepView()) {
                Text("Navigate")
            }
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("Detail View")
    }
}
