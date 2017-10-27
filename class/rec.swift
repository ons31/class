//
//  rec.swift
//  class
//
//  Created by Jin Tanaka on 10/27/29 H.
//  Copyright © 29 Heisei AUNQ. All rights reserved.
//

import UIKit

class rec {
    
    var name: String!
    var course: String!
    var imageName: String! //name of the image
    
    //initial setting
    init(name: String, course: String, imageName: String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    
    }
    
}
