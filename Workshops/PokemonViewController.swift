//
//  Created by Marcin Wieclawski on 09/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import UIKit
import SnapKit

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
    
    let imageView = UIImageView(frame: CGRect.zero)
    let nameLabel = UILabel(frame: CGRect.zero)
    let detailsLabel = UILabel(frame: CGRect.zero)
    
    override func loadView() {
        view = UIView(frame: CGRect.zero)
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(detailsLabel)
        
        imageView.image = pokemon.image.toUIImage()
        nameLabel.text = pokemon.name
        detailsLabel.text = "Attack: \(pokemon.attack) Defence: \(pokemon.defense) Weight: \(pokemon.weight)"
        detailsLabel.numberOfLines = 0
    }
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        imageView.snp_removeConstraints()
        nameLabel.snp_removeConstraints()
        detailsLabel.snp_removeConstraints()
        
        if traitCollection.horizontalSizeClass == .Compact && traitCollection.verticalSizeClass == .Regular {
            
            imageView.snp_makeConstraints { make in
                make.top.equalTo(snp_topLayoutGuideBottom).offset(10)
                make.left.equalTo(10)
                make.right.equalTo(-10)
                make.height.equalTo(imageView.superview!.snp_height)
                    .multipliedBy(0.5).offset(-20)
            }
            
            nameLabel.snp_makeConstraints { (make) in
                make.top.equalTo(imageView.snp_bottom).offset(10)
                make.left.equalTo(10)
                make.right.equalTo(-10)
            }
            
            detailsLabel.snp_makeConstraints { (make) in
                make.top.equalTo(nameLabel.snp_bottom).offset(10)
                make.left.equalTo(10)
                make.right.equalTo(-10)
            }
            
        }
        else {
        
            imageView.snp_makeConstraints {
                $0.top.equalTo(snp_topLayoutGuideBottom).offset(10)
                $0.bottom.equalTo(snp_bottomLayoutGuideTop).offset(-10)
                $0.left.equalTo(10)
                $0.width.equalTo(imageView.superview!.snp_width).multipliedBy(0.5).offset(-20)
            }
            
            nameLabel.snp_makeConstraints { (make) in
                make.top.equalTo(snp_topLayoutGuideBottom).offset(10)
                make.left.equalTo(imageView.snp_right).offset(10)
                make.right.equalTo(-10)
            }
            
            detailsLabel.snp_makeConstraints { (make) in
                make.top.equalTo(nameLabel.snp_bottom).offset(10)
                make.left.equalTo(imageView.snp_right).offset(10)
                make.right.equalTo(-10)
            }
            
        }
    }
    
}