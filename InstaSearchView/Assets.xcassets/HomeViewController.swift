//
//  HomeViewController.swift
//  InstaSearchView
//
//  Created by 신희권 on 2023/01/20.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var colletionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        colletionView.dataSource = self
        colletionView.delegate = self
       
        if let flowlayout = colletionView.collectionViewLayout as? UICollectionViewFlowLayout{
            flowlayout.estimatedItemSize = .zero
        }
    }

}

extension HomeViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as? HomeCell else{
            return UICollectionViewCell()
        }
        
        let imageName = "animal\(indexPath.item + 1)"
        cell.Configure(imageName)
        return cell
        
        
    }
    
    
}


extension HomeViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.width * 3/4
        return CGSize(width: collectionView.bounds.width, height: height)
    }
}

