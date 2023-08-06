//
//  LoginView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 06/08/2023.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var currentPage: Page
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(currentPage: .constant(.loginview))
    }
}
