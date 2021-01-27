//
//  TracksVC.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-15.
//  Copyright © 2021 AK. All rights reserved.
//

import UIKit
import AVFoundation

class TracksVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public var chosenGenre: Genre!
    
    @IBOutlet weak var trackList: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        trackList.dataSource = self
        trackList.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getTracks(type: chosenGenre.title).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell") as? TrackCell {
            let track = DataService.instance.getTracks(type: chosenGenre.title)[indexPath.row]
            cell.updateViews(track: track)
            return cell
        } else {
            return TrackCell()
        }
    }
    
    func initGenre(genre: Genre) {
        chosenGenre = genre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let track = DataService.instance.getTracks(type: chosenGenre.title)[indexPath.row]
        performSegue(withIdentifier: "AudioVC", sender: track)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let audioVC = segue.destination as? AudioVC {
            audioVC.initPlayer(track: sender as! Track)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
