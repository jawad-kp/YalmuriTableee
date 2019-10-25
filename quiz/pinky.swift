//
//  pinky.swift
//  quiz
//
//  Created by IOSLevel01 on 24/10/19.
//  Copyright © 2019 Sjbit. All rights reserved.
//

import UIKit

class pinky: UIViewController {
    var gameMode = "hahaha"
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "one"{
            let destinationVC = segue.destination as! chihuaha
            destinationVC.gm = gameMode
        }
    
  
    }
    
    
    
    

    
    //var diff = 1
    
    @IBAction func Symbole(_ sender: Any)
    {
        gameMode  = "sym"
        self.performSegue(withIdentifier: "one", sender: self)
       
    }
    @IBAction func Name(_ sender: Any)
    {
        gameMode  = "name"
        self.performSegue(withIdentifier: "one", sender: self)

    }
    @IBAction func AtNo(_ sender: Any)
    {
        gameMode  = "atn"
        self.performSegue(withIdentifier: "one", sender: self)
        
    }
    //we have established the game mode at this point and now we need to know what level of difficulty they're going to select
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        

       
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
