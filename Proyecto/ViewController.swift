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
    @IBOutlet weak var imgInLove2: UIImageView!
    @IBOutlet weak var imgInLove: UIImageView!
    @IBOutlet weak var imgMood: UIImageView!
    @IBOutlet weak var imgAngry: UIImageView!
    var secuenciaHappy: [UIImage] = []
    var secuenciaSad : [UIImage] = []
    var secuenciaAngry : [UIImage] = []
    var secuenciaInLove : [UIImage] = []
    var secuenciaInLove2 : [UIImage] = []
    var secuenciaMood : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...5 {
            let image = UIImage(named: "Flor2_feliz\(i)")
            secuenciaHappy.append(image!)
            
        }
        imgHappy.animationImages=secuenciaHappy
        imgHappy.animationDuration=1.0
        imgHappy.startAnimating()
        
        for i in 1...5 {
            let image = UIImage(named: "Flor2_triste\(i)")
            secuenciaSad.append(image!)
            
        }
        imgSad.animationImages=secuenciaSad
        imgSad.animationDuration=1.0
        imgSad.startAnimating()
        
        for i in 1...5 {
                   let image = UIImage(named: "Flor2_enojado\(i)")
                   secuenciaAngry.append(image!)
                   
            }
            imgAngry.animationImages=secuenciaAngry
            imgAngry.animationDuration=1.0
            imgAngry.startAnimating()
    
        for i in 1...5 {
                       let image = UIImage(named: "Flor2_enamorada\(i)")
                       secuenciaInLove.append(image!)
                       
            }
            imgInLove.animationImages=secuenciaInLove
            imgInLove.animationDuration=1.0
            imgInLove.startAnimating()
        
        for i in 1...5 {
                       let image = UIImage(named: "Flor2_enamorada\(i)")
                       secuenciaInLove2.append(image!)
                       
            }
            imgInLove2.animationImages=secuenciaInLove2
            imgInLove2.animationDuration=1.0
            imgInLove2.startAnimating()
        }

    
    
       
    
    @IBAction func doTapHappy(_ sender: Any) {
        lblMood.text="Happy"
        
        secuenciaMood  = []
        for i in 1...5 {
            let imagen = UIImage(named: "Flor_feliz\(i)")
            secuenciaMood.append(imagen!)
        }
        imgMood.stopAnimating()
        imgMood.animationImages = secuenciaMood
        imgMood.animationDuration = 1.0
        imgMood.startAnimating()
    }
    @IBAction func doTapSad(_ sender: Any) {
        lblMood.text="Sad"
        
        secuenciaMood  = []
        for i in 1...5 {
            let imagen = UIImage(named: "Flor_triste\(i)")
            secuenciaMood.append(imagen!)
        }
        imgMood.stopAnimating()
        imgMood.animationImages = secuenciaMood
        imgMood.animationDuration = 1.0
        imgMood.startAnimating()
    }
    @IBAction func doTapAngry(_ sender: Any) {
        lblMood.text="Angry"
        
        secuenciaMood  = []
        for i in 1...5 {
            let imagen = UIImage(named: "Flor_enojado\(i)")
            secuenciaMood.append(imagen!)
        }
        imgMood.stopAnimating()
        imgMood.animationImages = secuenciaMood
        imgMood.animationDuration = 1.0
        imgMood.startAnimating()
    }
    @IBAction func doTapInLove(_ sender: Any) {
        lblMood.text="In love"
        
        secuenciaMood  = []
        for i in 1...5 {
            let imagen = UIImage(named: "Flor_enamorada\(i)")
            secuenciaMood.append(imagen!)
        }
        imgMood.stopAnimating()
        imgMood.animationImages = secuenciaMood
        imgMood.animationDuration = 1.0
        imgMood.startAnimating()
    }
    
}

