//
//  ListBooksView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct ListBooksView: View {
    
    var body: some View {
        NavigationView{
            VStack(content: {
                Text("LISTE DES LIVRES A LIRE")
            })
        }
    }
}

struct ListBooksView_Previews: PreviewProvider {
    static var previews: some View {
        ListBooksView()
    }
}
