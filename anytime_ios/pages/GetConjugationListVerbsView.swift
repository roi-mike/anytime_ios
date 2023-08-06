//
//  GetConjugationListVerbsView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct GetConjugationListVerbsView: View {
    
    @Binding var currentPage: Page;
    
    
    
    var body: some View {
        NavigationView{
            VStack(content: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            })
        }.navigationBarHidden(true)
    }
}

struct GetConjugationListVerbsView_Previews: PreviewProvider {
    static var previews: some View {
        GetConjugationListVerbsView(currentPage: .constant(.getconjugationlistverbsview))
    }
}
