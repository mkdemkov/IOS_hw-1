//
//  ViewController.swift
//  Homework1
//
//  Created by Михаил Демков on 26.09.2022.
//

import UIKit

class  ViewController: UIViewController {
    
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSettings()
    }
    
    
    @IBAction func changeColorButtonPressed(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false;
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        
        UIView.animate(withDuration: 0.7, animations: {
            for view in self.views {
                view.layer.cornerRadius = .random(in: 3...37)
                view.backgroundColor = set.popFirst()
            }
        }) { completion in button?.isEnabled = true}
        
    }
    
    // Function to setup first colour and corner radius for views.
    func setDefaultSettings() {
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        
        UIView.animate(withDuration: 0.7, animations: {
            for view in self.views {
                view.layer.cornerRadius = .random(in: 3...37)
                view.backgroundColor = set.popFirst()
            }
        })
    }
}

