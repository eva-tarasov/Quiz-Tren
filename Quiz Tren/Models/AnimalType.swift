//
//  AnimalType.swift
//  Quiz Tren
//
//  Created by Евгений Тарасов on 25.06.2020.
//  Copyright © 2020 Евгений Тарасов. All rights reserved.
//

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐯"
    case rabbit = "🐰"
    case lion = "🦁"
    case pig = "🐷"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые Вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Любите одиночество."
        case .rabbit:
            return "Вы любите все мягкое и мокрвь. Вы здоровы и полны энергии."
        case .lion:
            return "Вам нравится шляться по саване. Охотиться за антилопами, а так же накидывать люлей подлым гиенам."
        case .pig:
            return "Вы любите валяться в грязи, нажираться до отвала и спать. Много много спать."
        case .turtle:
            return "Ваша сила в мудрости. Медленный и вдумчивый выигрывает на больших дистациях."
            
        }
    }
}
