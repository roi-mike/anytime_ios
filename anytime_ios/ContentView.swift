//
//  ContentView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 04/08/2023.
//

import SwiftUI
import SocketIO

struct ContentView: View {
    
    let manager: SocketManager
        let socket: SocketIOClient
        
        init() {
            manager = SocketManager(socketURL: URL(string: "http://192.168.1.15:3000")!, config: [.log(true), .compress])
            socket = manager.defaultSocket
            
            
            socket.connect()
        }
    
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
