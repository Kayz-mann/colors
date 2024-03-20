//
//  ColorsTableVC.swift
//  Colors-app
//
//  Created by Balogun Kayode on 20/03/2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    override func viewDidLoad() {
        //viewDId load initializes and hoists the functions, also add functions into memory
        super.viewDidLoad()
        addRandomColors()        // Do any additional setup after loading the view.
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
    
    //send selected color to next screen destination as the color tapped
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailsVC
        destVC.color = sender as? UIColor
    }

//    @IBAction func tempButtonTapped(_ sender: UIButton) {
//        performSegue(withIdentifier:"ToColorsDetailVC", sender: nil)
//    }

}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    //add 50 rows in the table by specifying an integer of 50
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 50
        return colors.count
    }
    
    //every time a cell is rendered this delegate function gets called
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        
        return cell
    }
    
    //this method make a selected row perform an action when selected you can add the id of the next screen to route to using withIdentifier
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //when a row is tapped get specific color of the row tapped
        let color = colors[indexPath.row]
        //perform segue with identifier
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }

}
