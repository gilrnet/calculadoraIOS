//
//  ViewController.swift
//  Outlet
//
//  Created by Lestad on 2020-08-31.
//  Copyright © 2020 Lestad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: String = ""
    var number2: String = ""
    var valortotal: Double?
    var oper: Int?
    
    
    @IBOutlet weak var lbltest: UILabel!
    @IBOutlet weak var lblValor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblValor.text = ""
        // Do any additional setup after loading the view.
    }
    
    func operacao(){
        number = lblValor.text!
        lblValor.text = ""
    }
//    func exibirResultado(Double: Resultado){
//
//    }
    @IBAction func Action0(_ sender: Any) {
        lblValor.text = lblValor.text! + "0"
        
    }
    @IBAction func Action1(_ sender: Any) {
        lblValor.text = lblValor.text! + "1"
    }
    
    @IBAction func Action2(_ sender: Any) {
        lblValor.text = lblValor.text! + "2"
    }
    
    @IBAction func Action3(_ sender: Any) {
        lblValor.text = lblValor.text! + "3"
    }
    @IBAction func Action4(_ sender: Any) {
        lblValor.text = lblValor.text! + "4"
    }
    
    @IBAction func Action6(_ sender: Any) {
        lblValor.text = lblValor.text! + "6"
    }
    @IBAction func Action5(_ sender: Any) {
        lblValor.text = lblValor.text! + "5"
    }
    
    @IBAction func Action7(_ sender: Any) {
        lblValor.text = lblValor.text! + "7"
    }
    
    @IBAction func Action8(_ sender: Any) {
        lblValor.text = lblValor.text! + "8"
    }
    
    @IBAction func Action9(_ sender: Any) {
        lblValor.text = lblValor.text! + "9"
    }
    @IBOutlet var Action4: UIView!
    
    @IBAction func Actionsoma(_ sender: Any) {
        oper = 1
        operacao()
    }
    
    @IBAction func ActionMult(_ sender: Any) {
        oper = 2
        operacao()
    }
    @IBAction func ActionDiv(_ sender: Any) {
        oper = 3
        operacao()
    }
    @IBAction func ActionSub(_ sender: Any) {
        oper = 4
        operacao()
    }
    
    @IBAction func btnclear(_ sender: Any) {
        lblValor.text = ""
        number = ""
        number2 = ""
    }
    
    
    @IBAction func Actionigual(_ sender: Any) {
        number2 = lblValor.text!
        var result: Double = 0
        let num1 = Double(number)!
        let num2 = Double(number2)!
        if oper == 1 {
            //soma
            result = num1 + num2
            lbltest.text = "\(number) + \(number2)"
            print(result)
            
        } else if oper == 2{
            //multiplicacao
            result = num1 * num2
            lbltest.text = "\(number) * \(number2)"
           
            
        } else if oper == 3{
            //divisao
            if num2 != 0 {
            result = num1 / num2
            lbltest.text = "\(number) / \(number2)"
           
        }
            
        } else if oper == 4{
            //subtracao
            result = num1 - num2
            lbltest.text = "\(number) - \(number2)"
        }
         print(result)
        let exibir = String(result)
        lblValor.text = exibir
    }
    
}

