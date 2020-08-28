//
//  ResultViewController.swift
//  Quiz Tren
//
//  Created by Евгений Тарасов on 25.06.2020.
//  Copyright © 2020 Евгений Тарасов. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    
    // MARK: Public properties
    var responses: [Answer]!

    
    // MARK: Life cycle method
    override func viewDidLoad() {
        super.viewDidLoad()

        updateResult()
        navigationItem.hidesBackButton = true
    }
    
}

// MARK: Private methods
extension ResultViewController {
    private func updateResult() {
        var frequencyOfAnimals: [AnimalType: Int] = [:]
        let animals = responses.map { $0.typeAnimal }
        
        for animal in animals {
            frequencyOfAnimals[animal] =
                (frequencyOfAnimals[animal] ?? 0) + 1
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType) {
        resultAnswerLabel.text = "Вы - \(animal.rawValue)"
        resultDefinitionLabel.text = animal.definition
    }
}
