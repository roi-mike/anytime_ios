//
//  RouterView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI


enum Page {
    case topicslearnview
    case profilview
    case listverbsview
    case listbooksview
}


struct RouterView: View {
    
    @State private var showSplash = true
    
    @State public var currentPage: Page;
    
    var body: some View {
        if showSplash {
                    SplashScreenView()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    showSplash = false
                                }
                            }
                        }
                } else {
                    
                    NavigationView {
                        VStack {
                            switch currentPage {
                            case .topicslearnview:
                                TopicsLearnView(currentPage: $currentPage);
                            case .profilview:
                                ProfilView(currentPage: $currentPage);
                            case .listverbsview:
                                ListVerbsView(currentPage: $currentPage)
                            case .listbooksview:
                                ListBooksView(currentPage: $currentPage)
                            }
                        }
                        .navigationBarHidden(true)
                    }
                }
    }
}

struct RouterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
