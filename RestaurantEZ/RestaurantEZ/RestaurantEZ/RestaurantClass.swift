//
//  RestaurantClass.swift
//  RestaurantEZ
//
//  Created by Hong Sit on 10/24/16.
//  Copyright © 2016 College Corporation III. All rights reserved.
//

import UIKit
import Foundation

class RestaurantClass {
    var Restaurant:String
    var ImageName:String
    var SoundFileName:String
    var BackgroundColor:UIColor
    
    init(restaurant:String, imageName:String,soundFileName:String, backgroundColor:UIColor )
    {
        self.Restaurant =  restaurant
        self.ImageName = imageName
        self.SoundFileName = soundFileName
        self.BackgroundColor = backgroundColor
    }
    
}
