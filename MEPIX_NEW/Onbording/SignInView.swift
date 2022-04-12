//
//  SignInView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 31.03.2022.
//

import SwiftUI

struct SignInView: View {
    @State private var goups: String = ""
    
    var body: some View {
        VStack{
            Text("Поиск расписания")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            Text("Введите номер группы или имя преподователя и мы загрузим выбранное рассписание на устройство")
                .foregroundColor(Color.black.opacity(0.4))
            
            TextField("Видите группу", text: $goups)
                .font(.title3)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(50.0)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                .padding(.vertical)
            
            VStack {
                Button (action:{}) {
                    Text ("Продожить")
                }
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
