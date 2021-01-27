//
//  ViewController.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2020-12-29.
//  Copyright © 2020 AK. All rights reserved.
//

import UIKit

class GenresVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var genreList: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        genreList.dataSource = self
        genreList.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView:UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getGenres().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            let genre = DataService.instance.getGenres()[indexPath.row]
            cell.updateViews(genre: genre)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let genre = DataService.instance.getGenres()[indexPath.row]
        performSegue(withIdentifier: "TracksVC", sender: genre)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tracksVC = segue.destination as? TracksVC {
            tracksVC.initGenre(genre: sender as! Genre)
        }
    }

}



