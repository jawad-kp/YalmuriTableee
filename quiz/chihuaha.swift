//
//  chihuaha.swift
//  quiz
//
//  Created by IOSLevel01 on 24/10/19.
//  Copyright © 2019 Sjbit. All rights reserved.
//

import UIKit

class chihuaha: UIViewController {
    
    var gm = " "
    var diff = 0
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "lol"
        {
            let destinationVC = segue.destination as! kakka
            destinationVC.gmde = gm
            destinationVC.dif = diff
        }
        
        
    }
    
    @IBAction func idk(_ sender: Any)
    {
        diff=10
        self.performSegue(withIdentifier: "lol", sender: self)
    }
    @IBAction func rofl(_ sender: Any)
    {
        diff=50
        self.performSegue(withIdentifier: "lol", sender: self)
        
    }
    
    @IBAction func ntg(_ sender: Any)
    {
        diff=100
        self.performSegue(withIdentifier: "lol", sender: self)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("the value is \(gm)")
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

