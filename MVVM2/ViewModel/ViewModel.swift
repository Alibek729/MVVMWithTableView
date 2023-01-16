//
//  ViewModel.swift
//  MVVM2
//
//  Created by Alibek Kozhambekov on 16.01.2023.
//

import Foundation

class ViewModel: TableViewModelType {
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)
        ]
    
    var numberOfRows: Int {
        return profiles.count
    }
}
