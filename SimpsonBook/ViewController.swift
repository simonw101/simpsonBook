//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Simon Wilson on 21/02/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var imageArray = [UIImage(named: "bart"), UIImage(named: "homer"), UIImage(named: "lisa"), UIImage(named: "maggie"), UIImage(named: "marge")]
    
    var simpsonArray = [SimpsonClass]()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        let marge = SimpsonClass(nameInit: "Marge", jobInit: "Home Maker", imageInit: UIImage(named: "marge")!)
        
        let homer = SimpsonClass(nameInit: "Homer", jobInit: "Safety Inspector", imageInit: UIImage(named: "homer")!)
        
        let bart = SimpsonClass(nameInit: "Bart", jobInit: "student", imageInit: UIImage(named: "bart")!)
        
        let maggie = SimpsonClass(nameInit: "Maggie", jobInit: "baby", imageInit: UIImage(named: "maggie")!)
        
        let lisa = SimpsonClass(nameInit: "Lisa", jobInit: "Student", imageInit: UIImage(named: "lisa")!)
        
        simpsonArray.append(marge)
        simpsonArray.append(homer)
        simpsonArray.append(bart)
        simpsonArray.append(maggie)
        simpsonArray.append(lisa)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        cell.imageView?.image = simpsonArray[indexPath.row].image
        cell.detailTextLabel?.text = simpsonArray[indexPath.row].job
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetailsVC", sender: simpsonArray[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            
            if let detailsVC = segue.destination as? DetailsViewController {
                
                detailsVC.chosenSimpson = sender as? SimpsonClass
                
            }
            
        }
        
    }

}

