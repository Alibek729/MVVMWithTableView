//
//  TableViewController.swift
//  MVVM2
//
//  Created by Alibek Kozhambekov on 16.01.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(name: "John", secondName: "Smith", age: 33),
            Profile(name: "Max", secondName: "Kolby", age: 21),
            Profile(name: "Mark", secondName: "Salmon", age: 55)
            ]
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! TableViewCell
        
        guard let profile = profiles?[indexPath.row] else { return fatalError("Profile coild not be assigned") as! UITableViewCell}
        
        cell.ageLabel.text = "\(String(describing: profile.age))"
        cell.fullNameLabel.text = "\(String(describing: profile.name)) \(String(describing: profile.secondName))"
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
