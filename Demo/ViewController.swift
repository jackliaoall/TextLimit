//
//  ViewController.swift
//  Demo
//
//  Created by jack on 7/11/16.
//  Copyright © 2016 jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate, UITextViewDelegate {
    
    
    @IBOutlet var textViewCount: UILabel!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if range.location >= 10 {
            return false
        }
        
        textViewCount.text = "TextField Word Count: \(range.location + 1)"
        
        return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if range.location >= 10 {
            return false
        }
        
        textViewCount.text = "TextView Word Count: \(range.location + 1)"
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

