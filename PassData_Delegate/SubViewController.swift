//
//  SubViewController.swift
//  PassData_Delegate
//
//  Created by xhieu21 on 7/20/22.
//

import UIKit

protocol TestDelegate {
    func passData(data: String)
}

class SubViewController: UIViewController {
    
    var message: String?
    @IBOutlet weak var txtLabel: UILabel!
    var delegate: TestDelegate?

    @IBOutlet weak var textData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Sub View"
        if let data = message {
            txtLabel.text = data
        }
    }
    
    @IBAction func backToRootView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        if let strData = textData.text {
            delegate?.passData(data: strData)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
