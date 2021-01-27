//
//  TrackCell.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-15.
//  Copyright © 2021 AK. All rights reserved.
//

import UIKit
import AVFoundation

class TrackCell: UITableViewCell {
    
    @IBOutlet weak var trackCover: UIImageView!
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    
    @IBAction func playButtonPressed(_ Sender: Any) {
        
    }

    @IBAction func pauseButtonPressed(_ Sender: Any) {
        
    }
    
    func updateViews(track: Track) {
        trackCover.image = UIImage(named: track.coverImg)
        trackName.text = track.title
        trackArtist.text = track.artist
        
    }
}
