//
//  ViewController.swift
//  Proyecto
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var reproductorMoods : AVAudioPlayer?
    var reproductorFondo : AVAudioPlayer?
    
    var url_happy : URL?
    var url_sad : URL?
    var url_angry : URL?
    var url_inlove : URL?
    

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
        //Audios
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch let error {
            print(error.localizedDescription)
        }
        
        //Audio Fondo
        do {
            //Encontrar urñ deñ archivo de audio
            let url = Bundle.main.url(forResource: "musica_fondo", withExtension: "mp3")
            //Asignar valor al reproductor
            reproductorFondo = try AVAudioPlayer(contentsOf: url!, fileTypeHint:  AVFileType.mp4.rawValue)
            //reproducir
            reproductorFondo?.volume = 0.2
            reproductorFondo?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        //OBTENER URL DEL AUDIO
        url_happy = Bundle.main.url(forResource: "Happy", withExtension : "m4a")
        url_sad = Bundle.main.url(forResource: "Sad", withExtension : "m4a")
        url_angry = Bundle.main.url(forResource: "Angry", withExtension : "m4a")
        url_inlove = Bundle.main.url(forResource: "Inlove", withExtension : "m4a")
        
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
        
        do {
            reproductorMoods = try AVAudioPlayer(contentsOf: url_happy!, fileTypeHint: AVFileType.m4a.rawValue)
            reproductorMoods?.play()
        }catch let error {
            print(error.localizedDescription)
        }
        
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
        
        do {
            reproductorMoods = try AVAudioPlayer(contentsOf: url_sad!, fileTypeHint: AVFileType.m4a.rawValue)
            reproductorMoods?.play()
        }catch let error {
            print(error.localizedDescription)
        }
        
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
        do {
            reproductorMoods = try AVAudioPlayer(contentsOf: url_angry!, fileTypeHint: AVFileType.m4a.rawValue)
            reproductorMoods?.play()
        }catch let error {
            print(error.localizedDescription)
        }
        
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
        
        do {
            reproductorMoods = try AVAudioPlayer(contentsOf: url_inlove!, fileTypeHint: AVFileType.m4a.rawValue)
            reproductorMoods?.play()
        }catch let error {
            print(error.localizedDescription)
        }
        
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
    
    @IBAction func doTapInLove2(_ sender: Any) {
        lblMood.text="In love"
        
        do {
            reproductorMoods = try AVAudioPlayer(contentsOf: url_inlove!, fileTypeHint: AVFileType.m4a.rawValue)
            reproductorMoods?.play()
        }catch let error {
            print(error.localizedDescription)
        }
        
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

