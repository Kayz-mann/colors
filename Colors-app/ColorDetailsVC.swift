//
//  ColorDetailsVC.swift
//  Colors-app
//
//  Created by Balogun Kayode on 20/03/2024.
//

import UIKit

class ColorDetailsVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //if  color is not passed from the parent screen render blue as background
        view.backgroundColor = color ?? UIColor.blue

        // Do any additional setup after loading the view.
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
