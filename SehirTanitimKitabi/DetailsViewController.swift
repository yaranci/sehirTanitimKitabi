//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by imrahor on 30.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var sehirIsmi: UILabel!
    @IBOutlet weak var sehirBolgesi: UILabel!
    
    var secilenSehir : Sehir?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirIsmi.text = secilenSehir?.isim
        sehirBolgesi.text = secilenSehir?.bolge
        image.image = secilenSehir?.gorsel
        
    }
}

