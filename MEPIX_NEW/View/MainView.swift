//
//  MainView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 21.03.2022.
//

import SwiftUI

struct MainView: View {
    
    //@State var group: Group?
    @State private var search: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        
                        WeekView()
                            .padding()
                        
                        SearchView(search: $search)
                    }
                }
            }
        }
    }
    
    //NavigationView {
    // if group == nil {
    //ProgressView()
    //} else {
    //Text("\(group!.name!)")
}


//.onAppear() {
//Api().loadData { (group) in
//self.group = group

//}
//}

//}

//}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct WeekView: View{
    var body: some View{
        Text ("Идет, 7 неделя")
    }
}

struct  SearchView: View {
    @Binding var search: String
    var body: some View{
        HStack{
            HStack{
                Image("Search")
                TextField ("Поиск по МЭИ", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.trailing, 8)
        }
    }
}
