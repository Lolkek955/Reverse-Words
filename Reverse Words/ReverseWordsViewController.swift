//
//  ViewController.swift
//  Reverse Words
//
//  Created by Константин Канюка on 18.03.2022.
//

import UIKit


final class  ReverseWordsViewController: UIViewController {
    @IBOutlet var reverseButton: UIButton!
    @IBOutlet var reverseTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!

    @IBAction func reverseButtonTapped(_ sender: UIButton) {
        let sample = reverseTextField.text ?? ""
        let sampleSentence = sample
        sender.isSelected.toggle()
        if sender.isSelected {
        func reverseWolrdsInSentance(sentanse: String) -> String {
        let allWords = sampleSentence.components(separatedBy: " ")
        var newSentence = ""
        for word in allWords  {
        if newSentence != "" {
           newSentence += " "
        }
        let reverseWord = String(word.reversed())
           newSentence += reverseWord
        }
        return newSentence
        }
        resultLabel.text = reverseWolrdsInSentance(sentanse: sampleSentence)
        reverseButton.setTitle("Clear", for: .normal)
        }
        else { self.reverseTextField.text = nil
               self.resultLabel.text = nil
        reverseButton.setTitle("Reverse", for: .normal)
        }
        }
        }

    
        



    
        
    
    


