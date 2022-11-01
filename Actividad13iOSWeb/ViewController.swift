//
//  ViewController.swift
//  Actividad13iOSWeb
//
//  Created by Alumno on 31/10/22.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var leftView:UIView!
    @IBOutlet weak var rigthView:UIView!
    @IBOutlet weak var leadingConstraint:NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint:NSLayoutConstraint!


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func animacion( sener:UIButton){
        
    }
    
    @IBAction func buttonTapped(){
        let vc = SFSafariViewController(url: URL(string: "https://www.rtve.es/playz/20210507/top-15-mejores-peliculas-terror-deberias-ver/2088886.shtml")!)
        
        present(vc,animated: true)

}
    
}
