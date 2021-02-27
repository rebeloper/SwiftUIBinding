//
//  SesitiveDataView.swift
//  SwiftUIBinding (iOS)
//
//  Created by Alex Nagy on 27.02.2021.
//

import SwiftUI

struct SesitiveDataView: View {
    
//    var password: String = "123"
    
//    @State private var password = ""
    
    @Binding var password: String
    
    var body: some View {
        VStack {
//            Text(password)
            SecureField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct SesitiveDataView_Previews: PreviewProvider {
    static var previews: some View {
        SesitiveDataView(password: .constant("123456"))
    }
}
