//
//  ViewController1.swift
//  TrainingExe1.2
//
//  Created by mac on 7/15/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    var arr :[String] = ["こんにちは","hello","Xin chào !"]
    
    var mark:Int = 1
    @IBOutlet weak var txtView : UITextView!
    @IBOutlet weak var txtAdd: UITextField!
    
    @IBAction func buttonAdd(_ sender: Any) {
        let S1:String = txtAdd.text!
        mark=2
        arr.append(S1)
        txtView.text = "Bạn vừa thêm vào mảng 1 phần tử !\nHãy nhấn phím [Xem mảng hiện tại] để show mảng!"
    }
    @IBAction func afterButtonDidPush(_ sender: Any) {
        let sopt:Int = arr.count
        var S1:String
        S1 = "Mảng hiện tại có " + String(sopt) + " phần tử là: \n"
        for i in 0...arr.count-1 {
            S1 = S1 + arr[i] + "\n"
        }
        txtView.text = S1
    }
    @IBAction func beforeButtonDidPush(_ sender: Any) {
        let sopt:Int = ( arr.count - mark + 1 )
        var S1:String
        S1 = "Mảng trước khi thêm có " + String(sopt) + " phần tử là: \n"
        for i in 0...arr.count-mark {
            S1 = S1 + arr[i] + "\n"
        }
        txtView.text = S1

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
