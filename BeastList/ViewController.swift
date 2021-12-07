//
//  ViewController.swift
//  BeastList
//
//  Created by Hell on 07/12/2021.
//

import UIKit

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    
}


class ViewController: UIViewController {
    
    var items : [String] = ["Sleep", "Study", "Play"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        let item = taskTextField.text!
        items.append(item)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


    
}

