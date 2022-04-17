//
//  ViewController.swift
//  Reverse Words
//
//  Created by Константин Канюка on 18.03.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var actReverseStyle: UIButton!
    
    @IBOutlet var reverseTextFiel: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func reverseButtonTapped(_ sender: UIButton) {
        var sample: String {return reverseTextFiel.text ?? ""
        }
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
            resultLabel.text = reverseWolrdsInSentance(sentanse: sampleSentence)
            
            actReverseStyle.setTitle("Clear", for: .normal)}
        else
        {self.reverseTextFiel.text = nil
            self.resultLabel.text = nil
            actReverseStyle.setTitle("Reverse", for: .normal)}
    }}

    
        



    
        
    
    


