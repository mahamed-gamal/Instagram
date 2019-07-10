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
    
    var images = [ UIImage(named: "cr1"), UIImage(named: "cr2"), UIImage(named: "cr4"), UIImage(named: "cr1"), UIImage(named: "cr2"), UIImage(named: "cr4") ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (section == 0){
            return 1
            
        } else {
            return images.count

        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")  as! TableViewCell
            
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SeconedCell", for: indexPath as IndexPath) as! SeconedCell
            
            cell.img.image = self.images[indexPath.row]
            cell.seconedImage.image = self.images[indexPath.row]
            cell.lbl.text = "Cristiano Ronaldo"

            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 0){
            return 110
        } else {
            return UITableView.automaticDimension
        }
        
    }


}

