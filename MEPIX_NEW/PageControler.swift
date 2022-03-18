//
//  PageControler.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 14.03.2022.
//

import Foundation

struct PageControler {
    let image: String
    let title: String
    let description: String
}

let content = [
    
    PageControler(
        image: "MEPI",
        title: "Обновленный MPEIX",
        description: "Мы полностью переосмыслили приложение, чтобы сделать его еще лучше"),
    PageControler(
        image: "RAS",
        title: "Просматривайте расписания",
        description: "К просмотренным ранее расписаниям вы имеете доступ даже без интернета"),
    PageControler(
        image: "ZAM",
        title: "Создавайте заметки",
        description: "Пользоваться заметками стало еще удобнее! Самые актуальные заметки теперь всегда отображаются на главном экране"),
    PageControler(
        image: "MAP",
        title: "Пользуйтесь картой",
        description: "Теперь на карте отображены не только корпуса, столовые и общежития, но и другие важные места"),
    PageControler(
        image: "SERCH",
        title: "Ищите в приложении",
        description: "С главного экрана можно искать места на карте и свои заметки. Скоро добавим поиск групп и преподавателей!"),
    
]



