//
//  ViewController.swift
//  PassData_Delegate
//
//  Created by xhieu21 on 7/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Root View"
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToSubView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSubView" {
            let destination = segue.destination as! SubViewController
            destination.delegate = self
            destination.message = txtData.text
        }
    }
}

extension ViewController: TestDelegate {
    func passData(data: String) {
        txtData.text = data
    }
    
    
}
