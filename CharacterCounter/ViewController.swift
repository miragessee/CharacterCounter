//
//  ViewController.swift
//  CharacterCounter
//
//  Created by Admin on 14/09/16.
//  Copyright © 2016 miragessee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet var textView: UITextView!

    @IBOutlet var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.layer.cornerRadius = 5.0;
        textView.layer.masksToBounds = false;
        textView.layer.borderWidth = 0.5;
        textView.layer.shadowColor = UIColor.orange.cgColor;
        textView.layer.shadowOpacity = 0.4;
        textView.layer.shadowRadius = 5.0;

        textView.delegate = self
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn  range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            textView.resignFirstResponder()
            performAction()
            return false
        }
        return true
    }
    
    func performAction() {
        var sayac = textView.text.characters.count;
        lbl.text = String(sayac);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

