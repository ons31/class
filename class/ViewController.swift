//
//  ViewController.swift
//  class
//
//  Created by Jin Tanaka on 10/27/29 H.
//  Copyright © 29 Heisei AUNQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var recArray: [rec] = []

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recArray.append(rec(name: "Mahiro", course: "collar bone", imageName: "mahiro.jpg"))
        recArray.append(rec(name: "Jihee", course: "soccer but track", imageName: "jihee.jpg"))
        
        setUI()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        nicknameLabel.text = recArray[index].name
        courseLabel.text = recArray[index].course
        imageView.image = recArray[index].getImage()
    }
    
    @IBAction func back() {
        index -= 1
        setUI()
    }

    @IBAction func forward() {
        index += 1
        setUI()
    }

}

