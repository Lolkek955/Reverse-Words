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
    }

    @IBOutlet var actReverseStyle: UIButton!
    
    
    
    
    @IBOutlet weak var sampletext: UITextField!
    var sample: String {return sampletext.text ?? ""
        }// вытаскиваю значение textfiels в тип Sting
    
    @IBOutlet weak var resultscreen: UILabel!
    
    
    @IBAction func actreverse(_ sender: UIButton!) {
        let sampleSentence = sample
        sender.isSelected.toggle();
        if sender.isSelected{
            func reverseWolrdsInSentance(sentanse:String) -> String{
                let allWords = sampleSentence.components(separatedBy: " ")
                var newSentence = ""
                for word in allWords{
                 if newSentence != ""{
                     newSentence += " " }
                let reverseWord = String(word.reversed())
                newSentence += reverseWord}
                
                return newSentence}
                resultscreen.text = reverseWolrdsInSentance(sentanse: sampleSentence)
        
                actReverseStyle.setTitle("Clear", for: .normal)}
            else
            {self.sampletext.text = nil
             self.resultscreen.text = nil
                actReverseStyle.setTitle("Reverse", for: .normal)}
            
        }
            }
    
  
    
    
        



    
        
    
    


