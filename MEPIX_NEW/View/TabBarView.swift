//
//  TabBarView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 22.03.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            RaspisanieView()
                .tabItem {
                Label("Home", systemImage: "house")
            }
            
            MapView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            BarsView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
