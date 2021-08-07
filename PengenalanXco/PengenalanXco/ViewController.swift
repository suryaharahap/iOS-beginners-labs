//
//  ViewController.swift
//  PengenalanXco
//
//  Created by Surya on 07/08/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var welcome: UILabel!
  @IBOutlet weak var newButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    // Mengubah teks welcome
    welcome.text = "Hallo sobat dicoding surya!"
    
    // Mengambil teks welcome
    print(welcome.text ?? "Tidak mendapatkan teks")
    
    // Mengubah teks newButton
    newButton.setTitle("Like sekerang juga!", for: .normal)
    
    // Mengambil teks newButton
    print(newButton.titleLabel?.text ?? "Tidak mendapatkan teks")
  }
  
  // Variabel sementara untuk menampul total like
  var totalLike = 0;
  
  
  @IBAction func addLike(_ sender: UIButton) {
    
    totalLike += 1
    newButton.setTitle("Like \(totalLike)", for: .normal)
  }
  

}

