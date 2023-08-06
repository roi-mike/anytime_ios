//
//  ListVerbsView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct ListVerbsView: View {
    
    @Binding var currentPage: Page;
    
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("LISTE VERBE A LIRE")
                
                Button(action: {
                    currentPage = .topicslearnview;
                }, label: {
                    Text("RETOURNER DAN ACCUEIL")
                })
          }
        }
        
    }
}

struct ListVerbsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
