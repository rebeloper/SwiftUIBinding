//
//  ContentViewModel.swift
//  SwiftUIBinding (iOS)
//
//  Created by Alex Nagy on 27.02.2021.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var sensitiveData = SensitiveData(password: "")
}
