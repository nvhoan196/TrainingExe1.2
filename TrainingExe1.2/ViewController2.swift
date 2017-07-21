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
    var arr = [Dict]()
    var Dict2 : [ String : String ] = [ "Tên" : "Hoàn" , "Tuổi" : "21" , "Địa chỉ" : "Hà Nam" , "SDT" : "0988914635" ]
    var firt = 0
    
    @IBOutlet weak var name : UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var adress: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var txtAdd: UITextView!
    @IBOutlet weak var txtView: UITextView!
    @IBAction func buttonAddNew(_ sender: Any) {
        var a = [ String : String ] ()
        if firt == 0 {
            firt = 1
            arr.append(Dict2)
            Dict2 = [ "Tên" : "Mon" , "Tuổi" : "19" , "Địa chỉ" : "Đông Anh" , "SDT" : "01637633026" ]
            arr.append(Dict2)
            }
        if name.text == ""
        {
            txtView.text = "Hãy điền đầy đủ tên và tuổi"
        } else if  age.text == ""
                {
                    txtView.text = "Hãy điền đầy đủ tên và tuổi"
                } else {
                        a = [ "Tên" : name.text! , "Tuổi" : age.text! , "Địa chỉ" : adress.text! , "SDT" : phone.text! ]
                        arr.append(a)
                        txtView.text = "Đã thêm " + a["Tên"]! + " vào danh sách người dùng !" + "\n" + "Tên : " + a["Tên"]! + "\n" + "Tuổi : " + a["Tuổi"]! + "\n" + "Địa chỉ : " + a["Địa chỉ"]! + "\n" + "Số ĐT: " + a["SDT"]!
                        }

    }
    
    @IBAction func buttonView(_ sender: Any) {
        var temp = [ String : String ] ()
        var temp1 = [ String : String ] ()
        var doicho = true
        if firt == 0 {
            firt = 1
            arr.append(Dict2)
            Dict2 = [ "Tên" : "Mon" , "Tuổi" : "19" , "Địa chỉ" : "Đông Anh" , "SDT" : "01637633026" ]
            arr.append(Dict2)
        }
        var s : String = "Danh sách đã sắp xếp độ tuổi tăng dần :\n"
        for i in 1...arr.count-1 {
            if doicho {
                doicho = false
                for j in 0...arr.count-i-1 {
                    temp = arr[j]
                    temp1 = arr[j+1]
                    if Int(temp["Tuổi"]!)! > Int(temp1["Tuổi"]!)! {
                        doicho = true
                        arr[j] = temp1
                        arr[j+1] = temp
                    }
                }
            } else { break }
        }
        
        for i in 0...arr.count-1 {
            temp = arr[i]
            s = s + temp["Tên"]! + "\t" + temp["Tuổi"]! + " Tuổi\n"
        }
        txtView.text = s
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
