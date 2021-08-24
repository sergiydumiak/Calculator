//
//  InfoViewController.swift
//  Calculator
//
//  Created by Pavlo Dumyak on 24.08.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel?
    @IBOutlet weak var startButton: UIButton?
    
    // Це вхідна точка
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        hideNavigationBar()
    }
    
    private func setupUI() {
        // MARK: -  В такій функції можна організовувати підготовку дисплею, можна розбивати на підфункції
        
        view.backgroundColor = .blue
        
        descriptionLabel?.textColor = .yellow
        
        startButton?.backgroundColor = .yellow
        startButton?.setTitleColor(.blue, for: .normal)
        startButton?.layer.cornerRadius = 8
    }
    
    // MARK: - Нам не треба показувати навігейшн бар на першій сторінці
    private func hideNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // MARK: Всі назви фуункцій і змінних мають відповідати їхній природі
    @IBAction func openCalculatorViewController(_ sender: Any) {
        openCalculator()
    }
}

// MARK: - Додатковий функціонал може бути винессений в extensions - це так звані розширення, можна краще робити читабельність коду і додавати додатквоий функціонал. Слід пам'ятати, що є модифікатори досступу і не до всіх функцій має бути доступ ззовні, а іноді лише всередині класу - internal,  public, private, open, fileprivate etc

fileprivate extension InfoViewController {
    
    func openCalculator() {
        // Беремо сторіборд, в даному випадку Main (бо там всі наші контролери).
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // Щоб витягнути конкретний сторіборд треба мати його ідентифікатор, який вказується в сторіборді як StoryboardID (читати як ініцалізуються контролери!)
        let controller = storyboard.instantiateViewController(identifier: "\(CalculatorViewController.self)")
        // Навігейшн контролер використоввуєтьсся для навігації - гляньте в сторіборді і прочитайте про навігацію
        navigationController?.pushViewController(controller, animated: true)
    }
}
