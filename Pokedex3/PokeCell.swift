//
//  PokeCell.swift
//  Pokedex3
//
//  Created by AW on 06/09/2016.
//  Copyright © 2016 goneToPlaid. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
    super.init(coder: aDecoder)
    
    layer.cornerRadius = 8.0
        
    
    }
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
        
        
    }
    
}
