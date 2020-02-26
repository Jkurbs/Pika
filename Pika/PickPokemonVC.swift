//
//  PickPokemonVC.swift
//  Pika
//
//  Created by Kerby Jean on 2/26/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

import UIKit
import CoreData


class PickPokemonVC: UIViewController {
    
    // MARK: - Properties
    
    var collectionView: UICollectionView!
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let layout = UICollectionViewFlowLayout()
        let width = (view.frame.width / 3) - 10
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = UIEdgeInsets(top: 25, left: 5, bottom: 50, right: 5)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 10
        
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(PickPokeCell.self, forCellWithReuseIdentifier: PickPokeCell.id)
        collectionView.backgroundColor = .white
        
        view.addSubview(collectionView)
    }
}

// MARK: - UICollectionViewDelegate/UICollectionViewDataSource

extension PickPokemonVC: UICollectionViewDelegate, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PickPokeCell.id, for: indexPath) as? PickPokeCell else {return UICollectionViewCell()}
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

