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
    case editprofilview
    case loginview
    case registerview
    case forgetpasswordview
    case listverbsview
    case listbooksview
    case gettextsListbooksview
    case getconjugationlistverbsview
}


struct RouterView: View {
    
    @State private var showSplash = true
    
    @State public var currentPage: Page;
    
    
    @State public var editprofilfield: EditProfilField = .init(f_name: "", l_name: "", email: "", phone: "");
    
    var body: some View {
        if showSplash {
                    SplashScreenView()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
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
                            case .editprofilview:
                                EditProfilView(currentPage: $currentPage, editprofilfield: $editprofilfield)
                            case .loginview:
                                LoginView(currentPage: $currentPage)
                            case .registerview :
                                RegisterView(currentPage: $currentPage)
                            case .forgetpasswordview :
                                ForgetPasswordView(currentPage: $currentPage)
                            case .listverbsview:
                                ListVerbsView(currentPage: $currentPage)
                            case .listbooksview:
                                ListBooksView(currentPage: $currentPage)
                            case .getconjugationlistverbsview :
                                GetConjugationListVerbsView(currentPage: $currentPage)
                            case .gettextsListbooksview :
                                GetTextsListBooksView(currentPage: $currentPage)
                                
                            }
                        }
                        .navigationBarHidden(true)
                    }
                }
    }
}

struct RouterView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView(currentPage: .topicslearnview)
    }
}
