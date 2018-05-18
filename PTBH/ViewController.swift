//
//  ViewController.swift
//  PTBH
//
//  Created by Phuc on 5/17/18.
//  Copyright © 2018 Phuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtResult: UILabel!

    @IBAction func btnreset(_ sender: Any) {
        txtA.text="";
        txtB.text="";
        txtC.text="";
    }
    @IBOutlet weak var txtC: UITextField!
    @IBOutlet weak var txtB: UITextField!
    @IBOutlet weak var txtA: UITextField!
    var a:Double = 0;
    var b:Double = 0;
    var c:Double = 0;
    @IBAction func btnGiai(_ sender: UIButton) {
        if (txtA.text == "" || txtB.text == "" || txtC.text == ""){
      txtResult.text = "Nhap Gia Tri";
        }
        else
        {
            if(!kiemtrasoam(character: txtA.text!) || !kiemtrasoam(character: txtB.text!) || !kiemtrasoam(character: txtC.text!))
            {
               txtResult.text = "Sai Dinh Dang So";
                
            }
            else
            {
                a = Double(txtA.text!)!;
                b = Double (txtB.text!)!;
                c = Double (txtC.text!)!;
                if (a == 0)
                {
                    if (b == 0)
                    {
                        if (c == 0){
                            txtResult.text = "Phuong Trinh Vo So Nghiem";}
                        else {
                            txtResult.text = "Phuong Trinh Vo Nghiem";}
                        
                    }
                    else{
                    txtResult.text = String (format: "Phuong Trinh Co 1 Nghiem x= %.1f",(-b/c));
                }
                }
           
                    else{
                
                    var delta: Double = b*b-4*a*c;
                    if (delta < 0){
                        self.txtResult.text = "Phuong Trinh Vo Nghiem";}
                    else if (delta == 0)
                    {
                        self.txtResult.text = String (format: "Phuong Trinh Co 1 Nghiem x= %.1f",(-self.b/(2*c)));
                        
                    }else{
                        var sq : Double = sqrt(delta);
                        var x1: Double = (-self.b+sq)/(2*self.a);
                        var x2: Double = (-self.b-sq)/(2*self.a);
                        self.txtResult.text = String (format: "Phuong Trinh Co 2 Nghiem Phan Biet x1= %.1f , x2= %.1f",x1,x2);
                    }

                }
            
            
            
                }
                
        }
        
            }
    

        func kiemtrasoam(character: String )->Bool
        {
            let charaterIndex = character [character.index(character.startIndex, offsetBy: 0)];
            if (charaterIndex == "-")
            {
                var count: Int = 0;
                for charac in character.characters
                {
                    if (charac == "-")
                    {
                    count += 1;
                    }
                }
                if(count > 1 ){
                    return false;}
                else {
                    return true;}
            }
            else {
                var count: Int = 0;
                for charac in character.characters
                {
                    if (charac == "-")
                    {
                        count += 1;
                    }
                }
                if(count > 0 ){
                    return false;}
                else {
                    return true;
                }
            }
            return true;
            
                }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        

}







