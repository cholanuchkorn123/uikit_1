//
//  TabbarColorVC.swift
//  intro_uikit
//
//  Created by cholanuch on 28/3/2567 BE.
//

import UIKit

class TabbarColorVC: UIViewController {
    
    var colors:[UIColor] = []
    
    enum Segue {
        static let ToColorDetails = "ToColorDetialsVC"
        
    }
    
    enum Cell{
        static let ColorCell = "colorCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as!ColorDetialsVC
        destVC.color = sender as? UIColor
    }
    
    func createRandomColors(){
        for _ in 0..<50{
            colors.append(UIColor.randomColor())
        }
    }
    
   

    @IBAction func navigateTesing(_ sender: Any) {
        performSegue(withIdentifier: "ToColorDetialsVC", sender: nil)
    }


}
extension  TabbarColorVC :UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard   let cell = tableView.dequeueReusableCell(withIdentifier: Cell.ColorCell) else{
            return UITableViewCell()
        }
        
        cell.backgroundColor  = colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segue.ToColorDetails, sender: color)
    }
}
