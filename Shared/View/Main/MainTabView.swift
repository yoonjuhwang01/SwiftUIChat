//
//  MainTabView.swift
//  SwiftUIChatTutorial (iOS)
//
//  Created by Yoonju Hwang on 12/24/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView{
            //tab view
            TabView{
                Text("Chats")
                    .tabItem{Image(systemName: "bubble.left")}
                
                Text("Channels")
                    .tabItem{Image(systemName: "bubble.left.and.bubble.right")}
                
                Text("Settings")
                    .tabItem{Image(systemName: "gear")}
            }
            //each view for tab like channel chats and settings
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
