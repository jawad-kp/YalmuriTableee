//
//  GifImageViewController.swift
//  quiz
//
//  Created by IOSLevel01 on 24/10/19.
//  Copyright © 2019 Sjbit. All rights reserved.
//

import UIKit


class GifImageViewController: UIViewController {

    @IBOutlet weak var gifImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gifImage.loadGif(name: "loading")

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
