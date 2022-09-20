//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 신 동군 on 2022/09/20.
//

import UIKit



class SymbolRollerViewController: UIViewController {
    
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    // << 심볼로부터 임의 추출 이미지 하나를 텍스트와 매칭 >> //
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        button.tintColor = UIColor.secondarySystemFill
        
        // Do any additional setup after loading the view.
        // print("View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //print("View did appear")
    }

    @IBAction func buttonTapped(_ sender: Any) {
        reload()
        //print("와 눌렸다...!!!")
    }
}
