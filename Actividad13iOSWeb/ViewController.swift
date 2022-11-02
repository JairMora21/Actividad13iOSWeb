//
//  ViewController.swift
//  Actividad13iOSWeb
//
//  Created by Alumno on 31/10/22.
//

import UIKit
//importamos para poder usar el buscador de safari
import SafariServices

class ViewController: UIViewController {

// variables para mover el constraint
    @IBOutlet weak var leadingConstraint:NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint:NSLayoutConstraint!



    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // esta funcion hace las animaciones de los UIView
    @IBAction func animacion( sener:UIButton){
        
        /*Portada
        UIView.animate(withDuration: 1) {
            self.leadingConstraint.constant = 10
            self.view.layoutIfNeeded()
        }
        */
        
        //anima el primer UIVew con una duracion de 4 segundos
        UIView.animate(withDuration: 4) {
            self.leadingConstraint.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (done) in
            if done {
                UIView.animate(withDuration: 1, delay: 1, options: []) {
                    self.leadingConstraint.constant = -260
                    self.view.layoutIfNeeded()
                }
        }
    }
        //anima el segundo UIVew con una duracion de 9 segundos para que primero pase UIView anterior y no se estorben
        /*introduccion
        UIView.animate(withDuration: 1) {
            self.trailingConstraint.constant = 10
            self.view.layoutIfNeeded()
        }
        */
        
        UIView.animate(withDuration: 9) {
            self.trailingConstraint.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (done) in
            if done {
                UIView.animate(withDuration: 1, delay: 1, options: []) {
                    self.trailingConstraint.constant = -260
                    self.view.layoutIfNeeded()
                }
        }
    }



        
       
        
    }
    
    @IBAction func buttonTapped(){
        let vc = SFSafariViewController(url: URL(string: "https://www.rtve.es/playz/20210507/top-15-mejores-peliculas-terror-deberias-ver/2088886.shtml")!)
        
        present(vc,animated: true)

}
    
}

