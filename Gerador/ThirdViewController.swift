//
//  ThirdViewController.swift
//  Gerador
//
//  Created by ios on 18/10/17.
//  Copyright © 2017 Rose. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var teste:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultNovaSenha.text = teste
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var novaSenha: UILabel!
    @IBOutlet weak var resultNovaSenha: UILabel!
    
    
    @IBAction func backInicio(_ sender: UIButton) {
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
