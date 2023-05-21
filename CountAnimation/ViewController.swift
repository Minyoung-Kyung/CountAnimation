//
//  ViewController.swift
//  CountAnimation
//
//  Created by 경민영 on 2023/05/21.
//

import UIKit

class ViewController: UIViewController {
    let finalNumber = 990603
    
    @IBOutlet weak var upLabel: CountScrollLabel!
    
    @IBAction func animationCountUpLabel(_ sender: Any) {
        upLabel.animate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upLabel.configure(with: finalNumber)
    }
}

extension Int {
    var formatted: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value: self)) ?? ""
    }
}
