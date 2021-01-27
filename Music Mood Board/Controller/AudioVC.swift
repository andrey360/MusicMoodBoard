//
//  AudioPlayerVC.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-25.
//  Copyright © 2021 AK. All rights reserved.
//

import UIKit
import AVFoundation

class AudioVC: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var audio: String!
    
    var track: Track!
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var trackArt: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    
    @IBAction func pauseButtonPressed(_ sender: UIButton) {
        audioPlayer.pause()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view
        
        do
        {
            var name = track.audioName
            if name.contains(".") {
                let endIndex = name.range(of: ".")!.lowerBound
                name = String(name.prefix(upTo: endIndex))
            }
            let data = NSDataAsset(name: name)!
            audioPlayer = try AVAudioPlayer(data: data.data)
            audioPlayer.prepareToPlay()
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateAudioProgressView), userInfo: nil, repeats: true)
            progress.setProgress(Float(audioPlayer.currentTime/audioPlayer.duration), animated: false)
        }
        catch
        {
            print("An error occurred while trying to extract audio file")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        audioPlayer.stop()
    }
    
        
    func initPlayer(track: Track) {
        self.track = track
    }
    

    @objc func updateAudioProgressView()
    {
       if audioPlayer.isPlaying
          {
           // Update progress
           progress.setProgress(Float(audioPlayer.currentTime/audioPlayer.duration), animated: true)
          }
    }
    
    
    func updateViews() {
        self.trackArt.image = UIImage(named: track.coverImg)
        self.trackTitle.text = track.title
        self.trackArtist.text = track.artist
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
