//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Simon Wilson on 21/02/2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var chosenSimpson: SimpsonClass? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if chosenSimpson != nil {
            
            imageView.image = chosenSimpson?.image
            
            nameLabel.text = chosenSimpson?.name
            
            jobLabel.text = chosenSimpson?.job
            
        }
    }
    

    

}
