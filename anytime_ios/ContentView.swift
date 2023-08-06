//
//  ContentView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack(alignment: .top, content: {
            RouterView(currentPage: .topicslearnview)
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
