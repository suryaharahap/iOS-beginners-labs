//
//  HeroTableViewCell.swift
//  MyHeroApp
//
//  Created by Surya on 21/08/21.
//

import UIKit

class HeroTableViewCell: UITableViewCell {

  @IBOutlet weak var photoHero: UIImageView!
  @IBOutlet weak var nameHero: UILabel!
  @IBOutlet weak var descHero: UILabel!
  
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
