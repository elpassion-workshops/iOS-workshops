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
        
        let imageViewTopConstraint = imageView.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 10)
        imageViewTopConstraint.active = true
        
        let imageViewLeftConstraint = imageView.leftAnchor.constraintEqualToAnchor(imageView.superview?.leftAnchor, constant: 10)
        imageViewLeftConstraint.active = true
        
        let imageViewRightConstraint = imageView.rightAnchor.constraintEqualToAnchor(imageView.superview?.rightAnchor, constant: -10)
        imageViewRightConstraint.active = true
        
        let imageViewHeightConstraint = imageView.heightAnchor.constraintEqualToAnchor(imageView.widthAnchor)
        imageViewHeightConstraint.active = true
        
        let nameLabelTopConstraint = nameLabel.topAnchor.constraintEqualToAnchor(imageView.bottomAnchor, constant: 10)
        nameLabelTopConstraint.active = true
        
        let nameLabelLeftConstraint = nameLabel.leftAnchor.constraintEqualToAnchor(nameLabel.superview?.leftAnchor, constant: 10)
        nameLabelLeftConstraint.active = true
        
        let nameLabelRightConstraint = nameLabel.rightAnchor.constraintEqualToAnchor(nameLabel.superview?.rightAnchor, constant: -10)
        nameLabelRightConstraint.active = true
        
        let detailsLabelTopConstraint = detailsLabel.topAnchor.constraintEqualToAnchor(nameLabel.bottomAnchor, constant: 10)
        detailsLabelTopConstraint.active = true
        
        let detailsLabelLeftConstraint = detailsLabel.leftAnchor.constraintEqualToAnchor(detailsLabel.superview?.leftAnchor, constant: 10)
        detailsLabelLeftConstraint.active = true
        
        let detailsLabelRightConstraint = detailsLabel.rightAnchor.constraintEqualToAnchor(detailsLabel.superview?.rightAnchor, constant: -10)
        detailsLabelRightConstraint.active = true
    }
    
}