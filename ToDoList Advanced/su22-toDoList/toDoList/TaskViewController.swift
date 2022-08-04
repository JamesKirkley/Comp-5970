//
//  TaskViewController.swift
//  toDoApp
//
//  Created by user222239 on 7/9/22.
//

import UIKit

class TaskViewController: UIViewController {

    
    @IBOutlet var label: UILabel!
    @IBOutlet var textView: UITextView!
    @IBOutlet var textView2: UITextView!
    var update: (() -> Void)?
    var task: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))

        // Do any additional setup after loading the view.
    }
    
    @objc func deleteTask() {
        
        navigationController?.popViewController(animated: true)
}
    
    
    
    @IBAction func didTouchCancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    
    @IBAction func didTouchSave(_ sender: Any) {
        

        
        let myString: String = textView.text
        textView2.insertText(myString)
        
        //UserDefaults().set(myString, forKey: "String")
        //textView2.text = UserDefaults().object(forKey: "String") as? String
        
        //update?()
        
        //navigationController?.popViewController(animated: true)
        
    }
    
    
}
