//
//  NewViewController.swift
//  Instagram
//
//  Created by Mohamed Gamal on 7/13/19.
//  Copyright © 2019 ME. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var the_img :UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = the_img
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
