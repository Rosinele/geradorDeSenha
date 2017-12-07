//
//  SecondViewController.swift
//  Gerador
//
//  Created by ios on 18/10/17.
//  Copyright © 2017 Rose. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let sResultado = novaPalavra.text
        
        //self.novaPalavra.text = sResultado!;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var digiteNovaPalavra: UILabel!
    @IBOutlet weak var novaPalavra: UITextField!
    
    var someDict:[Character:String] = ["A":"AA1", "B":"BT2", "C":"CC3", "D":"DG9", "E":"E5", "F":"FR6", "G":"GT7", "H":"TH7", "I":"IO9", "J":"JW5", "K":"KW7", "L":"LE4", "M":"MA5", "N":"NE0", "O":"OZ", "P":"PX4", "Q":"QV6", "R":"R3", "S":"S1", "T":"TD3", "U":"DU4", "V":"VJ2", "X":"XY4", "Y":"YE7", "W":"WK8","Z":"ZZ1", "a":"AA3", "b":"BT4", "c":"CC3", "d":"DG2", "e":"E7", "f":"FR9", "g":"GT6", "h":"TH5", "i":"IO7", "j":"JW0", "k":"KW8", "l":"LE4", "m":"MA8", "n":"NE1", "o":"OZ", "p":"PX2", "q":"QV4", "r":"RB", "s":"SY", "t":"TD8", "u":"DU6", "v":"VJ8", "x":"XY0", "y":"YE2", "w":"WK6","z":"ZZ0"]

   
    var senhagerada:String = ""

    @IBAction func confirmarCriacaoDeSenha(_ sender: Any) {
        let str = ("\(novaPalavra.text!)")
        print(str)
        let strCharactersArray = Array(str.characters)
        
        //let strStringArray = str.characters.map{String($0)}
        //print(strStringArray)
        
        for character in str.characters {
             senhagerada = senhagerada + someDict[character]!
        }
        
        print(senhagerada)
        self.performSegue(withIdentifier: "resultSenhaGerada", sender: nil)

    }
    
    @IBAction func voltarCriacaoDeSenha(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "resultSenhaGerada"){
            print("segue:")
            print(self.senhagerada)
            let ThirdViewController = segue.destination as? ThirdViewController;
            ThirdViewController?.teste = self.senhagerada;
            
       }
        
    }
 
}
