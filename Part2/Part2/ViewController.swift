//
//  ViewController.swift
//  Part2
//
//  Created by 葡萄酒 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    //テキストフィールド
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    //四則演算選択ボタン
    @IBOutlet private weak var symbolSegmentedControl: UISegmentedControl!
    
    //答え表示用ラベル
    @IBOutlet private weak var answerLabel: UILabel!
    
    //回答実行ボタン
    @IBAction func answerButton(_ sender: UIButton) {
        
        let number1 = Float(textField1.text!) ?? 0
        let number2 = Float(textField2.text!) ?? 0
        
        var answer: Float? = nil
        
        //選択した記号で処理を分岐
        switch symbolSegmentedControl.selectedSegmentIndex {
        // + の場合
        case 0:
            answer = number1 + number2
        // - の場合
        case 1:
            answer = number1 - number2
        // * の場合
        case 2:
            answer = number1 * number2
        // / の場合
        case 3:
            if number2 != 0 {
                answer = number1 / number2
            }
        default:
            print("エラー")
        }

        //結果をラベルに表示
        if answer == nil {
            answerLabel.text = "割る数を0以外にしてください。"
        } else {
            answerLabel.text = String(answer!)
        }
    }
}

