//
//  StockEditViewController.swift
//  JuiceMaker
//
//  Created by jin on 9/6/22.
//

import UIKit

class StockEditViewController: UIViewController {
    
    var fruitStock = [Fruit: Int]()
    @IBOutlet weak var strawberryStockLabel: UILabel!
    @IBOutlet weak var bananaStockLabel: UILabel!
    @IBOutlet weak var pineappleStockLabel: UILabel!
    @IBOutlet weak var kiwiStockLabel: UILabel!
    @IBOutlet weak var mangoStockLabel: UILabel!

    @IBOutlet weak var strawberryStepper: UIStepper!
    @IBOutlet weak var bananaStepper: UIStepper!
    @IBOutlet weak var pineappleStepper: UIStepper!
    @IBOutlet weak var kiwiStepper: UIStepper!
    @IBOutlet weak var mangoStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStockLabelAndStepperValue()
        navigationController?.navigationBar.backgroundColor = .systemGray5
    }

    @IBAction func dismissButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func strawberryStepperPressed(_ sender: UIStepper) {
        strawberryStockLabel.text = Int(sender.value).description
    }
    
    @IBAction func bananaStepperPressed(_ sender: UIStepper) {
        bananaStockLabel.text = Int(sender.value).description
    }
    
    @IBAction func pineappleStepperPressed(_ sender: UIStepper) {
        pineappleStockLabel.text = Int(sender.value).description
    }
    
    @IBAction func kiwiStepperPressed(_ sender: UIStepper) {
        kiwiStockLabel.text = Int(sender.value).description
    }
    
    @IBAction func mangoStepperPressed(_ sender: UIStepper) {
        mangoStockLabel.text = Int(sender.value).description
    }
    
    private func setStockLabelAndStepperValue() {
        fruitStock.forEach({ fruit in
            switch fruit.key {
            case .strawberry:
                strawberryStepper.value = Double(fruit.value)
                strawberryStockLabel.text = String(fruit.value)
            case .banana:
                bananaStepper.value = Double(fruit.value)
                bananaStockLabel.text = String(fruit.value)
            case .pineapple:
                pineappleStepper.value = Double(fruit.value)
                pineappleStockLabel.text = String(fruit.value)
            case .kiwi:
                kiwiStepper.value = Double(fruit.value)
                kiwiStockLabel.text = String(fruit.value)
            case .mango:
                mangoStepper.value = Double(fruit.value)
                mangoStockLabel.text = String(fruit.value)
            }
        })
    }
}
