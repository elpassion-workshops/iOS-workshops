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
        title = "Pokemons"
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("Not implemented") }
}

extension PokemonsListViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Pokemons.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath)
        let pokemon = Pokemons[indexPath.row]
        cell.textLabel?.text = pokemon.name
        return cell
    }
}

extension PokemonsListViewController {
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let pokemon = Pokemons[indexPath.row]
        let pokemonViewController = PokemonViewController(pokemon: pokemon)
        navigationController?.pushViewController(pokemonViewController, animated: true)
    }
    
}
