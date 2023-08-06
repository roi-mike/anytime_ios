//
//  TopicsLearnView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct TopicsLearnView: View {
    
    @Binding var currentPage: Page;
    @State private var stackHeight: CGFloat = 80
    @State private var changeColor: CGColor = Color.blue.cgColor!
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center ,spacing: 15, content: {
                
                
                                HStack(alignment: .top, spacing: 0) {
                                    Button(action: {
                                        print("LOG currebtPage LOGO :")
                                        currentPage = Page.topicslearnview
                                    }) {
                                        LogoView().padding(.leading, 10)
                                    }
                                    Spacer()
                                    Button(action: {
                                        currentPage = .profilview
                                        print("LOG currebtPage PHOTO :")
                                    }) {
                                        ProfileImageView().padding(.trailing, 10)
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, height: stackHeight, alignment: .bottomTrailing)
                                .background(Color.blue).onAppear(perform: {
                                    withAnimation(.easeInOut(duration: 2), {
                                        
                                        stackHeight = 150
                                    })
                                })
                
                Button(action: {
                    currentPage = Page.listverbsview;
                }, label: {
                    Text("Voir la liste des verbes")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(Color.blue)
                                                .cornerRadius(10)
                })
                
                Button(action: {
                    currentPage = .listbooksview;
                }, label: {
                    Text("Voir la liste des livres à lire")
                                                .font(.headline)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(Color.blue)
                                                .cornerRadius(10)
                })
            }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
        }
    }
}

struct LogoView: View {
    var body: some View {
        Image("logoapp")
            .resizable()
            .frame(width: 90, height: 60)
    }
}

struct ProfileImageView: View {
    var body: some View {
        let coloredCircle = RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.red, lineWidth: 5)
                    .padding(3)
                
                let orangeCircle = coloredCircle
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.orange, lineWidth: 5)
                            .padding(3)
                    )
                
                let yellowCircle = orangeCircle
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.yellow, lineWidth: 5)
                            .padding(3)
                    )
                
                let greenCircle = yellowCircle
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green, lineWidth: 5)
                            .padding(3)
                    )
                
                let blueCircle = greenCircle
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 5)
                            .padding(3)
                    )
                
                let purpleCircle = blueCircle
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.purple, lineWidth: 5)
                            .padding(3)
                    )
                
                return Image("profile")
                    .resizable()
                    .frame(width: 60, height: 70)
                    .clipShape(Rectangle()).cornerRadius(25)
                    .overlay(purpleCircle)
        
        
    }
}

struct TopicsLearnView_Previews: PreviewProvider {
    
    

    static var previews: some View {
        TopicsLearnView(currentPage: .constant(.topicslearnview))
    }
}
