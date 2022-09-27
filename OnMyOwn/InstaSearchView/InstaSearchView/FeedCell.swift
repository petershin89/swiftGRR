//
//  FeedCell.swift
//  InstaSearchView
//
//  Created by 신 동군 on 2022/09/26.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!

    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
//    func configure(_ imageName: String) {
//        thumbnailImageView.image = UIImage(named: imageName)
//    }
    
    func configure(_ feed: Feed) {
        
        thumbnailImageView.image = UIImage(named: feed.pics)
        placeLabel.text = feed.place
        messageLabel.text = feed.message
        dateLabel.text = feed.date
    }
}
