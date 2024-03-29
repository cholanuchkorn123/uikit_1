//
//  ColorDetialsVC.swift
//  intro_uikit
//
//  Created by cholanuch on 28/3/2567 BE.
//

import UIKit

class ColorDetialsVC: UIViewController {
    
    var color :UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .red
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
