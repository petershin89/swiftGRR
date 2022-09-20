//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 신 동군 on 2022/09/20.
//

import UIKit

class WeatherViewController: UIViewController {
    
    let cities = ["Seoul", "New York", "London", "Tokyo", "Sydney", "Rome"]
    
    let weathers = ["cloud.fill", "cloud.bolt.rain.fill", "cloud.sun.fill", "sun.max.fill", "wind.snow", "star.fill", "cloud.sleet.fill"]
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityWeather: UIImageView!
    @IBOutlet weak var cityTemp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        cityWeather.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 0..<30)
        cityTemp.text = "\(randomTemp)°"
        
        print("도시, 날씨, 이미지 변경하자!")
    }
    
}
