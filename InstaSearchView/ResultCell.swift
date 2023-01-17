//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by 신희권 on 2023/01/17.
//

import UIKit

class ResultCell: UICollectionViewCell {
    @IBOutlet var tumnailImageView : UIImageView!
    override func prepareForReuse() {
        super.prepareForReuse()
        tumnailImageView.image = nil
    }
    
    func configure(_ imageName : String){
        tumnailImageView.image = UIImage(named: imageName)
    }
}

