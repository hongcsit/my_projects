//
//  ViewController.swift
//  RestaurantEZ
//
//  Created by Hong Sit on 10/24/16.
//  Copyright © 2016 College Corporation III. All rights reserved.
//

import UIKit
import AVFoundation
var sound: AVAudioPlayer!

class ViewController: UIViewController {
    
    @IBOutlet weak var imgMiddle: UIImageView!
    
    
    @IBOutlet weak var lblRestaurant: UILabel!
    
    //var mySounds = ["eating","robin","waves","chicken","cooking"]
    
    var r1 = RestaurantClass(
        restaurant: "Olive Garden",
        imageName: "olivegarden.jpg",
        soundFileName: "eating.wav",
        backgroundColor: UIColor(colorLiteralRed: 150/255, green: 180/255, blue: 100/255,
                                alpha: 0.9))
    
    var r2 = RestaurantClass(
        restaurant: "Red Robin",
        imageName:"redrobin.jpg",
        soundFileName: "robin.wav",
        backgroundColor: UIColor(colorLiteralRed: 150/255, green: 25/255,blue: 25/255,
                                 alpha: 0.9))
    
    var r3 = RestaurantClass(
        restaurant: "Red Lobster",
        imageName: "redlobster.jpg",
        soundFileName: "waves.wav",
        backgroundColor: UIColor(colorLiteralRed: 190/255, green: 75/255,blue: 75/255,
                                 alpha: 0.9))
    
    var r4 = RestaurantClass(
        restaurant: "Bonchon Chicken",
        imageName: "bonchon.JPG",
        soundFileName: "chicken.wav",
        backgroundColor: UIColor(colorLiteralRed: 200/255, green: 173/255,blue: 101/255,
                                alpha: 0.9))
    
    var r5 = RestaurantClass(
        restaurant: "TGI Friday",
        imageName: "tgifriday.jpg",
        soundFileName: "cooking.wav",
        backgroundColor: UIColor(colorLiteralRed: 5/255, green: 170/255,blue: 10/255,
                                 alpha: 0.9))
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        lblRestaurant.alpha = 0
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateLabel()
    }
    

    @IBAction func btnTouch(_ sender: AnyObject) {
        updateLabel()
    }
    
    func updateLabel()
    {
        
        var arrayOfObjects = [RestaurantClass]()
        arrayOfObjects = [r1, r2, r3, r4, r5]
        let random = randomGenerator (upperBound: arrayOfObjects.count)
        let restaurantObject = arrayOfObjects[random]
        lblRestaurant.text = restaurantObject.Restaurant
        self.view.backgroundColor = restaurantObject.BackgroundColor
        let middleImage = UIImage(named: restaurantObject.ImageName)
        imgMiddle.image = middleImage
        UIView.animate(withDuration: 3.0, animations: {self.lblRestaurant.alpha = 1.0})
        sound.play()
    }
    
    func randomGenerator(upperBound: Int) -> Int
    {
        return Int(arc4random_uniform(UInt32(upperBound)))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sound = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath:Bundle.main.path(forResource:
        "eating",ofType: "wav")! ))
        
        //sound = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath:Bundle.main.path(forResource:
        //"robin",ofType: "wav")! ))
        
        //sound = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath:Bundle.main.path(forResource:
        //"waves",ofType: "wav")! ))
    
        //sound = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath:Bundle.main.path(forResource:
        //"chicken",ofType: "wav")! ))
    
        //sound = try? AVAudioPlayer(contentsOf:URL(fileURLWithPath:Bundle.main.path(forResource:
        //"cooking",ofType: "wav")! ))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

