//
//  lallan.swift
//  quiz
//
//  Created by IOSLevel01 on 25/10/19.
//  Copyright © 2019 Sjbit. All rights reserved.
//

import UIKit

class lallan: UIViewController
{
    var score = 0

    @IBOutlet weak var faltu: UILabel!
    @IBOutlet weak var Gaurav: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
         self.Gaurav.loadGif(name: "dolph")
        faltu.text = "Your Score is : \(score) "
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK:/ - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
