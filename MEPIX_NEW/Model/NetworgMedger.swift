//
//  NetworgMedger.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 18.04.2022.
//

import Foundation

class Api: ObservableObject{
    @Published var group: Group?
    
    func loadData(completion:@escaping (Group?) -> ()) {
        let groupName = "ИЭоз-60-17"
        let url =  "https://api.kekmech.com/mpeix/schedule/v1/group/\(groupName)/schedule/1"
        if let urlString = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed){
            
            guard let url = URL(string: urlString) else {
                print("Invalid url...")
                return
            }
            URLSession.shared.dataTask(with: url) { data, response, error in
                let group = try? JSONDecoder().decode(Group.self, from: data!)
                print(group)
                DispatchQueue.main.async {
                    completion(group)
                }
            }.resume()
        }
    }
}

