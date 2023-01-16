//
//  DetailViewController.swift
//  MVVM2
//
//  Created by Alibek Kozhambekov on 17.01.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.descriptiion
    }
    
}
