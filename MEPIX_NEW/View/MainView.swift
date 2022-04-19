//
//  MainView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 21.03.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var group: Group?
    
    var body: some View {
        NavigationView {
            if group == nil {
                ProgressView()
            } else {
                Text("\(group!.name!)")
            }

        }
        .onAppear() {
            Api().loadData { (group) in
                self.group = group
                print(group)
            }
        }.navigationTitle("Book List")
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

