//
//  ViewController.swift
//  Simple Counter
//
//  Created by Кирилл Брызгунов on 06.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!
    @IBOutlet private weak var countButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /* Если честно, я не понял, что значит "Изначальные тексты установите в сториборде."
           Поэтому я задал в сториборде Для Label "text", а для кнопки Button — "title". А в viewDidLoad() задал оптимальные значения, но возможно я просто не так понял :/
         ....
         */
        countLabel.text = "Значение счётчика: 0"
        countButton.setTitle("Нажми меня!", for: .normal)
        countButton.layer.cornerRadius = 10
    }
    
    private var count = 0
    
    // MARK: Функция для увеличения счетчика по нажатию кпопки
    @IBAction func buttonTap(_ sender: Any) {
        count += 1
        countLabel.text = "Значение счётчика: " + "\(count)"
    }
    
    
}

