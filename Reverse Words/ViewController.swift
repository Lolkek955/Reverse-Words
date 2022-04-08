//
//  ViewController.swift
//  Reverse Words
//
//  Created by Константин Канюка on 18.03.2022.
//

import UIKit
var wordToReverse = ""

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var sampletext: UITextField!
    
    @IBOutlet weak var resultscreen: UILabel!
    
    @IBAction func actreverse(_ sender: UIButton!) {
        var wordToReverse = ""
        wordToReverse = sampletext.text!
        
        
        reverseWord()
        func reverseWord(){
            var tempReverseWord = String(wordToReverse.reversed())
            tempReverseWord = tempReverseWord.uppercased()
            resultscreen.text = tempReverseWord
        }
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sampletext.resignFirstResponder()
    }
    
  
    }


    
        
    
    


