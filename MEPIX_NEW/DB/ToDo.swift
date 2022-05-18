//
//  ToDo.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 19.05.2022.
//

import Foundation
import RealmSwift

class ToDo: Object {
    @Persisted (primaryKey: true) var id: ObjectId
    
}
