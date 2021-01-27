//
//  Genre.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-11.
//  Copyright © 2021 AK. All rights reserved.
//

import Foundation

struct Genre {
    private(set) public var title: String
    private(set) public var imgName: String
    
    init(title: String, imgName: String) {
        self.title = title
        self.imgName = imgName
    }
}
