//
//  Track.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-14.
//  Copyright © 2021 AK. All rights reserved.
//

import Foundation
import AVFoundation

struct Track {
    private(set) public var audioName: String
    private(set) public var title: String
    private(set) public var artist: String
    private(set) public var tags: [String]
    private(set) public var coverImg: String
    
    init(audioName: String, title: String, artist: String, tags: [String], coverImg: String) {

        self.audioName = audioName
        self.title = title
        self.artist = artist
        self.tags = tags
        self.coverImg = coverImg
    }
}
