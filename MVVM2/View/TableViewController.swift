//
//  TableViewController.swift
//  MVVM2
//
//  Created by Alibek Kozhambekov on 16.01.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! TableViewCell
        
        guard let viewModel = viewModel else { return fatalError("ViewModel could not be initialized") as! UITableViewCell}
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        
        cell.viewModel = cellViewModel
        return cell
    }
    
    //MARK: - Table view delegates
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        viewModel.selectRow(atIndexPath: indexPath)
        
        performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else { return }
        
        if identifier == "detailSegue" {
            if let detailVC = segue.destination as? DetailViewController {
                detailVC.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }

}
