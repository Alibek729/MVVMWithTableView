//
//  DetaiViewModel.swift
//  MVVM2
//
//  Created by Alibek Kozhambekov on 17.01.2023.
//

import Foundation

class DetaiViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var descriptiion: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) years old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
