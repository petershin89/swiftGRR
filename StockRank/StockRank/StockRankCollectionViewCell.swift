//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 신 동군 on 2022/09/21.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rankLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var companyNameLabel: UILabel!
    
    
    @IBOutlet weak var priceLabel: UILabel!
 
    
    @IBOutlet weak var diffLabel: UILabel!
    
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        imageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        priceLabel.text = "\(convertToCurrencyFormat(price: stock.price))원"

        diffLabel.textColor = stock.diff > 0 ? UIColor.systemRed : UIColor.systemBlue
        diffLabel.text = "\(stock.diff)%"
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result = numberFormatter.string(from: NSNumber(value: price))!
        return result
    }
}

