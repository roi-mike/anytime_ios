//
//  TopicsLearnView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct TopicsLearnView: View {
    
    @Binding var currentPage: Page;
    
    var body: some View {
        
            VStack(alignment: .center ,spacing: 15, content: {
                
                HStack(alignment: .top, spacing: 0, content: {
                    Button(action: {
                        print("LOG currebtPage LOGO :")
                        currentPage = Page.topicslearnview
                    }, label: {
                        LogoView()
                    }).frame(width: 90, height: 60)
                    
                    
                    Button(action: {
                        currentPage = .profilview
                        print("LOG currebtPage PHOTO :")
                    }, label: {
                        ProfileImageView()
                    })
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                }).frame(width: UIScreen.main.bounds.width, height: 80).background(.blue);
                
                NavigationLink(destination: {
                }, label: {
                    Text("Voir la liste des verbes")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(Color.blue)
                                                .cornerRadius(10).onAppear{
                                                    print("DEBUT STARTING SAMUEL")
                                                }
                });
                
                NavigationLink(destination: {
                }, label: {
                    Text("Voir la liste des verbes")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(Color.blue)
                                                .cornerRadius(10)
                })
            }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
    }
}

struct LogoView: View {
    var body: some View {
        Image("logoapp")
            .resizable()
    }
}

struct ProfileImageView: View {
    var body: some View {
        Image("profile")
            .resizable()
    }
}

struct TopicsLearnView_Previews: PreviewProvider {
    
    

    static var previews: some View {
        ContentView()
    }
}
