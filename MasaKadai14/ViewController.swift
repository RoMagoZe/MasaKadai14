//
//  ViewController.swift
//  MasaKadai14
//
//  Created by Mina on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let fruit = Fruits()
    private let checkMark = UIImage(named: "check-mark")

    private var addLabels: [(String, Bool)] = []

    @IBAction func save(segue: UIStoryboardSegue) {
        let secondVC = segue.source as? SecondViewController

        if let label = secondVC?.getInputText() {
            addLabels.append((label, false))
            tableView.reloadData()
        }
    }

    @IBAction func cancel(segue: UIStoryboardSegue) {}
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.fruits.count + addLabels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        if indexPath.row < fruit.fruits.count {
            let fruitItem = fruit.fruits[indexPath.row]
            cell.textLabel?.text = fruitItem.0
            cell.imageView?.image = fruitItem.1 ? checkMark : nil
        } else {
            let addLabelItem = addLabels[indexPath.row - fruit.fruits.count]
            cell.textLabel?.text = addLabelItem.0
        }

        return cell
    }
}
