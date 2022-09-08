//
//  ViewController.swift
//  Proyecto
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMood: UILabel!
    @IBOutlet weak var imgHappy: UIImageView!
    @IBOutlet weak var imgSad: UIImageView!
    var secuenciaHappy: [UIImage] = []
    var secuenciaSad : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...5 {
            let image = UIImage(named: "Flor_feliz\(i)")
            secuenciaHappy.append(image!)
            
        }
        imgHappy.animationImages=secuenciaHappy
        imgHappy.animationDuration=1.0
        imgHappy.startAnimating()
        
        for i in 1...5 {
            let image = UIImage(named: "Flor_triste\(i)")
            secuenciaSad.append(image!)
            
        }
        imgSad.animationImages=secuenciaSad
        imgSad.animationDuration=1.0
        imgSad.startAnimating()
    }
    
    @IBAction func doTapHappy(_ sender: Any) {
        lblMood.text="Happy"
    }
    @IBAction func doTapSad(_ sender: Any) {
        lblMood.text="Sad"
    }
    @IBAction func doTapAngry(_ sender: Any) {
        lblMood.text="Angry"
    }
    @IBAction func doTapInLove(_ sender: Any) {
        lblMood.text="In love"
    }
}

