//
//  RegisterView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct RegisterView: View {
    
    @Binding var currentPage: Page
    
    
    var body: some View {
        NavigationView{
            VStack(content: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            })
        }.navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(currentPage: .constant(.registerview))
    }
}
