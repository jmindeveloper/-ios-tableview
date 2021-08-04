//
//  ViewController.swift
//  TableView
//
//  Created by J_Min on 2021/08/04.
//

import UIKit

class ViewController: UIViewController {

    var numOfRows = 0
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    @IBAction func addBtn(_ sender: Any) {
        numOfRows = numOfRows + 1
        tableView.reloadData()
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {return UITableViewCell()}
        cell.cellLabel.text = "\(indexPath.row)번째 셀입니다"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}

class TableViewCell: UITableViewCell {
    @IBOutlet weak var cellLabel: UILabel!
}
