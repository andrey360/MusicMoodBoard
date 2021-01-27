//
//  CategoryCell.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-11.
//  Copyright © 2021 AK. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    //public var categoryGenre: Genre!
    
    func updateViews(genre: Genre) {
        //categoryGenre = genre
        categoryImage.image = UIImage(named: genre.imgName)
    }
}
