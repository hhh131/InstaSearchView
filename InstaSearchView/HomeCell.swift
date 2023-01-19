//
//  HomeCell.swift
//  InstaSearchView
//
//  Created by 신희권 on 2023/01/20.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    @IBOutlet var mainImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        mainImageView.image = nil
    }
    
    func Configure(_ imageName : String){
        mainImageView.image = UIImage(named: imageName)
    }
    
}
