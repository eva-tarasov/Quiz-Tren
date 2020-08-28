//
//  Question.swift
//  Quiz Tren
//
//  Created by Евгений Тарасов on 25.06.2020.
//  Copyright © 2020 Евгений Тарасов. All rights reserved.
//

struct Question {
    var titleQuestion: String
    var typeQuestion: ResponseType
    var answersForQuestion: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(
                titleQuestion: "Какую пищю Вы предпочитаете ?",
                typeQuestion: .single,
                answersForQuestion: [
                    Answer(textAnswer: "Мясо", typeAnimal: .dog),
                    Answer(textAnswer: "Рыба", typeAnimal: .cat),
                    Answer(textAnswer: "Морковь", typeAnimal: .rabbit),
                    Answer(textAnswer: "Кукуруза", typeAnimal: .turtle)
                ]
            ),
            Question(
                titleQuestion: "Что Вам больше нравится ?",
                typeQuestion: .multiple,
                answersForQuestion: [
                    Answer(textAnswer: "Плавать", typeAnimal: .turtle),
                    Answer(textAnswer: "Спать", typeAnimal: .cat),
                    Answer(textAnswer: "Обниматься", typeAnimal: .rabbit),
                    Answer(textAnswer: "Есть", typeAnimal: .pig)
                ]
            ),
            Question(
                titleQuestion: "Любите ли Вы поездки на машине ?",
                typeQuestion: .range,
                answersForQuestion: [
                    Answer(textAnswer: "Ненавижу", typeAnimal: .cat),
                    Answer(textAnswer: "Нервничаю", typeAnimal: .rabbit),
                    Answer(textAnswer: "Не замечаю", typeAnimal: .turtle),
                    Answer(textAnswer: "Обожаю", typeAnimal: .dog)
                ]
            ),
            Question(
                titleQuestion: "Ваша любимая среда обитания ?",
                typeQuestion: .multiple,
                answersForQuestion: [
                    Answer(textAnswer: "Cаванна", typeAnimal: .lion),
                    Answer(textAnswer: "Лес", typeAnimal: .rabbit),
                    Answer(textAnswer: "Водоем", typeAnimal: .turtle),
                    Answer(textAnswer: "Ферма", typeAnimal: .pig)
                ]
            ),
            Question(
                titleQuestion: "Как Вы добываете пищу ?",
                typeQuestion: .single,
                answersForQuestion: [
                    Answer(textAnswer: "Появляется сама", typeAnimal: .cat),
                    Answer(textAnswer: "Охота", typeAnimal: .lion),
                    Answer(textAnswer: "Пляшу в цирке", typeAnimal: .rabbit),
                    Answer(textAnswer: "Сплю и жду", typeAnimal: .pig)
                ]
            )
        ]
    }
}
