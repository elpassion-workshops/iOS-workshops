//
//  Created by Marcin Wieclawski on 09/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {
    
    let pokemon: Pokemon
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
        super.init(nibName: nil, bundle: nil)
        
        title = pokemon.name
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    func imageForPokemon() -> UIImage? {
        if let decodedData = NSData(base64EncodedString: pokemon.image, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters) {
            
            let decodedimage = UIImage(data: decodedData)
            return decodedimage
        }
        return nil
    }
    
}