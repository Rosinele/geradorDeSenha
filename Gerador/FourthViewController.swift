//
//  FourthViewController.swift
//  Gerador
//
//  Created by ios on 18/10/17.
//  Copyright © 2017 Rose. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue, "    ", sender);
    }
    
    @IBOutlet weak var cadastrarSenha: UILabel!
    
    @IBOutlet weak var cadastrarSenhaTF: UITextField!
    
    @IBOutlet weak var confirmarViewDeSenha: UIButton!
    
    
    @IBAction func voltarViewDeSenha(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
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
