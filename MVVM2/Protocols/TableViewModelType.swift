//
//  TableViewModelType.swift
//  MVVM2
//
//  Created by Alibek Kozhambekov on 16.01.2023.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
