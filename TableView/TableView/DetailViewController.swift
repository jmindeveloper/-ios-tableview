//
//  DetailViewController.swift
//  TableView
//
//  Created by J_Min on 2021/08/05.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var str: String!
    
    override func viewDidLoad() {
        label.text = str
    }
}
