//
//  ContentView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 28.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("firstStart") var firstStart = true
    @AppStorage ("MyGroup") var myGroup = ""
    
    var body: some View {
        if firstStart {
            OnbordingView()
        } else {
            if myGroup != ""{
                SignInView()
            } else{
                TabBarView()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
