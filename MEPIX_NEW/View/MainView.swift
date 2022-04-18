//
//  MainView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 21.03.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var group = [Group]()
    var body: some View {
        List(group) { group in
            Text("\(group.name)")
        }
    }
        .onAppear() {
            Api().loadData { (group) in
                self.group = group
            }
        }.navigationTitle("Book List")
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

