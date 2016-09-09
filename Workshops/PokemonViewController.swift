//
//  Created by Marcin Wieclawski on 09/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {
    
    let pokemon: Pokemon
    private var portraitConstraints = [NSLayoutConstraint]()
    private var landscapeConstraints = [NSLayoutConstraint]()
    
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
        
        let imageView = UIImageView(frame: CGRect.zero)
        view.addSubview(imageView)
        
        let nameLabel = UILabel(frame: CGRect.zero)
        view.addSubview(nameLabel)
        
        let detailsLabel = UILabel(frame: CGRect.zero)
        view.addSubview(detailsLabel)
        
        imageView.image = pokemon.image.toUIImage()
        nameLabel.text = pokemon.name
        detailsLabel.text = "Attack: \(pokemon.attack) Defence: \(pokemon.defense) Weight: \(pokemon.weight)"
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        portraitConstraints = [
            imageView.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 10),
            imageView.leftAnchor.constraintEqualToAnchor(imageView.superview?.leftAnchor, constant: 10),
            imageView.rightAnchor.constraintEqualToAnchor(imageView.superview?.rightAnchor, constant: -10),
            imageView.heightAnchor.constraintEqualToAnchor(imageView.superview?.heightAnchor, multiplier: 0.5, constant: -20),
            
            nameLabel.topAnchor.constraintEqualToAnchor(imageView.bottomAnchor, constant: 10),
            nameLabel.leftAnchor.constraintEqualToAnchor(nameLabel.superview?.leftAnchor, constant: 10),
            nameLabel.rightAnchor.constraintEqualToAnchor(nameLabel.superview?.rightAnchor, constant: -10),
            
            detailsLabel.topAnchor.constraintEqualToAnchor(nameLabel.bottomAnchor, constant: 10),
            detailsLabel.leftAnchor.constraintEqualToAnchor(detailsLabel.superview?.leftAnchor, constant: 10),
            detailsLabel.rightAnchor.constraintEqualToAnchor(detailsLabel.superview?.rightAnchor, constant: -10)
        ]
        
        landscapeConstraints = [
            imageView.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 10),
            imageView.leftAnchor.constraintEqualToAnchor(imageView.superview?.leftAnchor, constant: 10),
            imageView.bottomAnchor.constraintEqualToAnchor(bottomLayoutGuide.topAnchor, constant: -10),
            imageView.widthAnchor.constraintEqualToAnchor(imageView.superview?.widthAnchor, multiplier: 0.5, constant: -20),
            
            nameLabel.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 10),
            nameLabel.leftAnchor.constraintEqualToAnchor(imageView.rightAnchor, constant: 10),
            nameLabel.rightAnchor.constraintEqualToAnchor(nameLabel.superview?.rightAnchor, constant: -10),
            
            detailsLabel.topAnchor.constraintEqualToAnchor(nameLabel.bottomAnchor, constant: 10),
            detailsLabel.leftAnchor.constraintEqualToAnchor(imageView.rightAnchor, constant: 10),
            detailsLabel.rightAnchor.constraintEqualToAnchor(nameLabel.superview?.rightAnchor, constant: -10)
        ]
    }
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        if traitCollection.horizontalSizeClass == .Compact && traitCollection.verticalSizeClass == .Regular {
            NSLayoutConstraint.deactivateConstraints(landscapeConstraints)
            NSLayoutConstraint.activateConstraints(portraitConstraints)
        } else {
            NSLayoutConstraint.deactivateConstraints(portraitConstraints)
            NSLayoutConstraint.activateConstraints(landscapeConstraints)
        }
    }
    
}