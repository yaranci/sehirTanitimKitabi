//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by imrahor on 30.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var sehirDizisi = [Sehir]()
    var secilen : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let istanbul = Sehir(isim: "Istanbul", bolge: "marmara", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "ankara", bolge: "iç anadolu", gorsel: UIImage(named: "ankara")!)
        let kars = Sehir(isim: "kars", bolge: "doğu", gorsel: UIImage(named: "kars")!)
        
        sehirDizisi = [istanbul,ankara,kars]
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let a = UITableViewCell()
        a.textLabel?.text = sehirDizisi[indexPath.row].isim
        return a
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        secilen = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let a = segue.destination as! DetailsViewController
            a.secilenSehir = secilen
        }
    }

}

