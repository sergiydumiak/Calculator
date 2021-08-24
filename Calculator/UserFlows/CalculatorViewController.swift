//
//  ViewController.swift
//  Calculator
//
//  Created by Pavlo Dumyak on 24.08.2021.
//

import UIKit

// Усе треба максимально розділяти, щоб було форматування правильне і не було зайвого коду

class CalculatorViewController: UIViewController {
    
    let operations = Operations()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    private func setupUI() {
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        title = "Calculator"
    }
    
    // Знову зробити юай, щоб при повороті теж можна було вводити і бачити дані
    
    
    // Цифри приймати через одну фуункцію, для кожної іншої кнопки окремий IBAction - є принцип єдиної відповідальності, використовувати tag - погано
}
