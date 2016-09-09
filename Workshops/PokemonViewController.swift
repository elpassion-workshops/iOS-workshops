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
    
    override func loadView() {
        view = UIView(frame: CGRect.zero)
        view.backgroundColor = UIColor.whiteColor()
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 300, height: 300))
        view.addSubview(imageView)
        
        let nameLabel = UILabel(frame: CGRect(x: 10, y: 320, width: 300, height: 30))
        view.addSubview(nameLabel)
        
        let detailsLabel = UILabel(frame: CGRect(x: 10, y: 360, width: 300, height: 30))
        view.addSubview(detailsLabel)
    }
    
}