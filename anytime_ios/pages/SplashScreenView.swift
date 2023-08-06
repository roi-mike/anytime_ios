//
//  SplashScreenView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
            VStack(spacing: 0, content: {
                Text("Mbozaa")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .edgesIgnoringSafeArea(.all)
            })
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
