//
//  DetailViewController.swift
//  MyHeroApp
//
//  Created by Surya on 22/08/21.
//

import UIKit

class DetailViewController: UIViewController {
  
  
  @IBOutlet weak var nameHero: UILabel!
  @IBOutlet weak var photoHero: UIImageView!
  @IBOutlet weak var descHero: UILabel!
  //  @IBOutlet weak var nameHero: UILabel!
//  @IBOutlet weak var photoHero: UIImageView!
//  @IBOutlet weak var descHero: UILabel!
  
  // Digunakan untuk menampung data hero
  var hero: Hero?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Digunakan untuk menetapkan nilai hero ke beberapa view yang ada
    if let result = hero {
      photoHero.image = result.photo
      nameHero.text = result.name
      descHero.text = result.description
    }
  }
  
  
}
