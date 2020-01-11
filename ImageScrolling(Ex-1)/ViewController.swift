//
//  ViewController.swift
//  ImageScrolling(Ex-1)
//
//  Created by charanpreet kaur on 2020-01-11.
//  Copyright © 2020 charanpreet kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var index = 0
    let imgArray = ["one.png", "two.png", "three.png", "four.png", "five.png", "six.png", "seven.png", "eight.png","nine.png", "ten.png"]
    @IBOutlet weak var imgView: UIImageView!

    
    @IBAction func btnBackward(_ sender: Any) {
        if (index >= 0) {
            index = index - 1
            if(index == 0){
                index = imgArray.count - 1
            }
            let img = UIImage(named: imgArray[index])
                             imgView.image = img
        }
        }
       
    
    @IBAction func btnLast(_ sender: Any) {
        index = imgArray.count - 1
        let img = UIImage(named: imgArray[index])
        imgView.image = img
    }
    @IBAction func btnForward(_ sender: Any) {
        if(index < imgArray.count){
            index = index + 1
            if (index == imgArray.count){
                index = 0
            }

            let img = UIImage(named: imgArray[index])
            imgView.image = img

        }
//        if (index >= imgArray.count){
//            index = index - 1
//            let img = UIImage(named: imgArray[index])
//            imgView.image = img
//        }
    }
    
    @IBAction func btnFirst(_ sender: Any) {
        index = 0
        let img = UIImage(named: imgArray[index])
        imgView.image = img
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         let img = UIImage(named: imgArray[0])
                  imgView.image = img
        // Do any additional setup after loading the view.
    }


}

