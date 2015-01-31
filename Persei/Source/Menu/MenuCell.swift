//
//  MenuCell.swift
//  Persei
//
//  Created by zen on 31/01/15.
//  Copyright (c) 2015 Yalantis. All rights reserved.
//

import Foundation
import UIKit

class MenuCell: UICollectionViewCell {
    
    // MARK: - Init
    private func commonInit() {
        backgroundView = UIView()
        
        let views: [NSObject: AnyObject] = ["imageView": imageView, "shadowView": shadowView]
        contentView.addSubview(imageView)
        contentView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "|[imageView]|",
                options: nil,
                metrics: nil,
                views: views
            )
        )
        
        contentView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|[imageView]|",
                options: nil,
                metrics: nil,
                views: views
            )
        )
        
        contentView.addSubview(shadowView)
        contentView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "|[shadowView]|",
                options: nil,
                metrics: nil,
                views: views
            )
        )
        contentView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:[shadowView(4)]|",
                options: nil,
                metrics: nil,
                views: views
            )
        )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    // MARK: - ShadowView
    private let shadowView = UIView()
    
    // MARK: - ImageView
    private let imageView = UIImageView()
    
    // MARK: - Object
    var object: MenuItem? {
        didSet {
        }
    }

    // MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        
        object = nil
    }
}