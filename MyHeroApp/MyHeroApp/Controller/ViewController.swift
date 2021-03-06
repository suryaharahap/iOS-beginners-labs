//
//  ViewController.swift
//  MyHeroApp
//
//  Created by Surya on 16/08/21.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var heroTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Menambahkan tittle pada Navigation
    self.navigationItem.title = "Pahlawan Indonesia"
    
    // Menghubungkan heroTableView dengan ke dua metode di bawah
    heroTableView.dataSource = self
    
    // Menambahkan delegate ke table view
    heroTableView.delegate = self
    
    // Menghubungkan dengan XIB untuk HeroTableViewCell dengan heroTableView.
    heroTableView.register(UINib(nibName: "HeroTableViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
  }
  
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return heroes.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell", for: indexPath) as? HeroTableViewCell {
      
      // Menetapkan nilai hero ke view di dalam cell
      let hero = heroes[indexPath.row]
      cell.nameHero.text = hero.name
      cell.descHero.text = hero.description
      cell.photoHero.image = hero.photo
      
      // Kode ini gigunakan untuk membuat imageView memiliki frame bound/lingkaran
      cell.photoHero.layer.cornerRadius = cell.photoHero.frame.height / 2
      cell.photoHero.clipsToBounds = true
      
      return cell
      
    } else {
      return UITableViewCell()
    }
  }
  
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // Memanggil View Controller dengan berkas NIB/XIB di dalamnya
    let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
    
    // Mengirim data hero
    detail.hero = heroes[indexPath.row]
    
    // Push/mendorong view controller lain
    self.navigationController?.pushViewController(detail, animated: true)
    
  }
}


