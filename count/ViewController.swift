//
//  ViewController.swift
//  count
//
//  Created by shogoro on 2016/11/19.
//  Copyright © 2016年 shogoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //"number"っていう名前の整数(Integer)作って０を代入
    var number: Int = 0
    //UILabelっていうのをIBOutletから取ってきて"label"っていう名前をつける
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func plus(){
        number = number + 1
        //labelのtextはNumberを文字列(String)に変換したやつですよ。
        label.text = String(number)
        
        if number >= 10 {
        //LabelのテキストカラーはUIColorの赤ですよ
            label.textColor = UIColor.red
        }else if number <= -10 {
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }
    
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        label.textColor = UIColor.black
        }
    
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
        
        if number <= -10 {
            label.textColor = UIColor.blue
        }else if number >= 10 {
                //LabelのテキストカラーはUIColorの赤ですよ
                label.textColor = UIColor.red
            }else{
            label.textColor = UIColor.black
        }
    }
}

