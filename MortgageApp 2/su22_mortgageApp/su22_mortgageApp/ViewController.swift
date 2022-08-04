//
//  ViewController.swift
//  su22_mortgageApp
//
//  Created by user222239 on 6/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueA: UITextField!
    @IBOutlet weak var valueB: UITextField!
    @IBOutlet weak var valueC: UITextField!
    @IBOutlet weak var payment: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func calculate(_ sender: Any) {
        
        let loanAmount = Float(valueC.text!) ?? .zero
        let numberOfMonths = Float(valueA.text!) ?? .zero
        let interestRate = Float(valueB.text!) ?? .zero
        let monthlyRate = interestRate / 100
        
        if(loanAmount <= 0 || numberOfMonths <= 0 || interestRate <= 0) {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "errorcode")
            self.present(controller, animated: true, completion: nil)
            
            let when = DispatchTime.now() + 3                                                               
            DispatchQueue.main.asyncAfter(deadline: when){
              // your code with delay
              self.dismiss(animated: true, completion: nil)
            }
            
        }
        else {

        let answer = loanAmount * monthlyRate / ( 1 - pow(1 + monthlyRate, -numberOfMonths))
        payment.text = String(answer)
            
        }
     }
}

