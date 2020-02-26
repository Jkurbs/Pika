//
//  PickPokeCell.swift
//  Pika
//
//  Created by Kerby Jean on 2/26/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

import UIKit

class PickPokeCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
