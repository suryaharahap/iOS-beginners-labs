//
//  ViewController.swift
//  MyProfile
//
//  Created by Surya on 11/08/21.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func editProfile(_ sender: Any) {
    let alert = UIAlertController(
      title: "Apakah anda berniat untuk mengubah profile", message: "Anda dapat memperbarui profile anda sekarang juga.", preferredStyle: .alert
    )
    
    alert.addAction(UIAlertAction(title: "Ya", style: .default){_ in print("Mengganti profile")
    })
    
    alert.addAction(UIAlertAction(title: "Tidak", style: .cancel){_ in print("Membatalkan ubah profile")
    })
    
    self.present(alert, animated: true)
    
  }
}

