//
//  ViewController2.swift
//  TrainingExe1.2
//
//  Created by mac on 7/15/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    typealias Dict = [ String : String ]
    var Mang = [Dict]()
    var Dict2 : [ String : String ] = [ "Tên" : "Hoàn" , "Tuổi" : "21" , "Địa chỉ" : "Hà Nam" , "SDT" : "0988914635" ]
    var firt = 0
    
    @IBOutlet weak var Ten: UITextField!
    @IBOutlet weak var Tuoi: UITextField!
    @IBOutlet weak var DC: UITextField!
    @IBOutlet weak var sdt: UITextField!
    @IBOutlet weak var txtAdd: UITextView!
    @IBOutlet weak var Xem: UITextView!
    @IBAction func Them(_ sender: Any) {
        var a = [ String : String ] ()
        if firt == 0 {
            firt = 1
            Mang.append(Dict2)
            Dict2 = [ "Tên" : "Mon" , "Tuổi" : "19" , "Địa chỉ" : "Đông Anh" , "SDT" : "01637633026" ]
            Mang.append(Dict2)
            }
        if Ten.text == ""
        {
            Xem.text = "Hãy điền đầy đủ tên và tuổi"
        } else if  Tuoi.text == ""
                {
                    Xem.text = "Hãy điền đầy đủ tên và tuổi"
                } else {
                        a = [ "Tên" : Ten.text! , "Tuổi" : Tuoi.text! , "Địa chỉ" : DC.text! , "SDT" : sdt.text! ]
                        Mang.append(a)
                        Xem.text = "Đã thêm " + a["Tên"]! + " vào danh sách người dùng !" + "\n" + "Tên : " + a["Tên"]! + "\n" + "Tuổi : " + a["Tuổi"]! + "\n" + "Địa chỉ : " + a["Địa chỉ"]! + "\n" + "Số ĐT: " + a["SDT"]!
                        }

    }
    
    @IBAction func Hiends(_ sender: Any) {
        var temp = [ String : String ] ()
        var temp1 = [ String : String ] ()
        var doicho = true
        if firt == 0 {
            firt = 1
            Mang.append(Dict2)
            Dict2 = [ "Tên" : "Mon" , "Tuổi" : "19" , "Địa chỉ" : "Đông Anh" , "SDT" : "01637633026" ]
            Mang.append(Dict2)
        }
        var s : String = "Danh sách đã sắp xếp độ tuổi tăng dần :\n"
        for i in 1...Mang.count-1 {
            if doicho {
                doicho = false
                for j in 0...Mang.count-i-1 {
                    temp = Mang[j]
                    temp1 = Mang[j+1]
                    if Int(temp["Tuổi"]!)! > Int(temp1["Tuổi"]!)! {
                        doicho = true
                        Mang[j] = temp1
                        Mang[j+1] = temp
                    }
                }
            } else { break }
        }
        
        for i in 0...Mang.count-1 {
            temp = Mang[i]
            s = s + temp["Tên"]! + "\t" + temp["Tuổi"]! + " Tuổi\n"
        }
        Xem.text = s
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
