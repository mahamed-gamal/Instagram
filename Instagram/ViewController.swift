//
//  ViewController.swift
//  Instagram
//
//  Created by Mohamed Gamal on 7/8/19.
//  Copyright © 2019 ME. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var imageTag : Int?
    var images = ["cr1","ME","cr1","cr2","ME","cr1","cr2"]
    var names = ["cr1","mohamed gamal","cristiano Ronaldo","cristiano Ronaldo","mohamed gamal","cristiano Ronaldo","cristiano Ronaldo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "SecondCell")
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return images.count + 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")  as! TableViewCell
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell") as! SecondCell
            cell.smallImg.image = UIImage(named: images[indexPath.row - 1 ])
            cell.bigImg.image = UIImage(named: images[indexPath.row - 1])
            cell.nameLabel.text = names[indexPath.row - 1 ]
            cell.bigImg.tag = indexPath.row - 1
            self.imageTag = cell.bigImg.tag
            cell.bigImg.isUserInteractionEnabled = true
            
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(self.openGallery))
            // Add gesture recognizer to your image view
            cell.bigImg.addGestureRecognizer(recognizer)
            
            return cell
        }
        
    }
        
    @objc func openGallery(id : Int){
      
        performSegue(withIdentifier: "showBigImage", sender: self)

    }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if(indexPath.row == 0){
                return 100
            } else {
                return UITableView.automaticDimension
            }
            
        }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBigImage" {
            let vc = segue.destination as! NewViewController
            vc.the_img = UIImage(named: self.images[imageTag!])
            print("button pressed")
        }
    }

    
}

