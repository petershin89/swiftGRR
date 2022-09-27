//
//  ChatListCell.swift
//  ChatList
//
//  Created by 신 동군 on 2022/09/27.
//

import UIKit

class ChatListCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contextLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 10
    }
    
    func configure(_ chat: Chat) {
        
        thumbnailImageView.image = UIImage(named: chat.name)
        
        nameLabel.text = chat.name
        contextLabel.text = chat.chat
        dateLabel.text = formattedDateString(dateString: chat.date)
    }
    
    func formattedDateString(dateString: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "M/d"
            return formatter.string(from: date)
        } else {
            return ""
        }
    }
}
