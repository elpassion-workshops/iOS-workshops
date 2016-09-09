//
//  Created by Marcin Wieclawski on 09/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import UIKit

class PokemonsListViewController: UITableViewController {

    init() {
        super.init(style: .Plain)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }

}

struct Pokemon {
    
    let name: String
    let attack: NSInteger
    let defense: NSInteger
    let weight: NSInteger
    let image: String
    
}
