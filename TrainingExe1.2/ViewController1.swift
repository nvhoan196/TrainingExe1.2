//
//  ViewController1.swift
//  TrainingExe1.2
//
//  Created by mac on 7/15/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    var Mang:[String] = ["こんにちは","hello","Xin chào !"]
    
    var tr:Int = 1;
    @IBOutlet weak var txtXem: UITextView!
    @IBOutlet weak var txtNhap: UITextField!
    
    @IBAction func Them(_ sender: Any) {
        let S1:String = txtNhap.text!
        tr=2
        Mang.append(S1)
        txtXem.text = "Bạn vừa thêm vào mảng 1 phần tử !\nHãy nhấn phím [Xem mảng hiện tại] để show mảng!"
    }
    @IBAction func Hientai(_ sender: Any) {
        let sopt:Int = Mang.count
        var S1:String
        S1 = "Mảng hiện tại có " + String(sopt) + " phần tử là: \n"
        for i in 0...Mang.count-1 {
            S1 = S1 + Mang[i] + "\n"
        }
        txtXem.text = S1
    }
    @IBAction func Truoc(_ sender: Any) {
        let sopt:Int = ( Mang.count - tr + 1 )
        var S1:String
        S1 = "Mảng trước khi thêm có " + String(sopt) + " phần tử là: \n"
        for i in 0...Mang.count-tr {
            S1 = S1 + Mang[i] + "\n"
        }
        txtXem.text = S1

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
