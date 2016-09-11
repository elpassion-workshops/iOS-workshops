//
//  PokemonProviderTests.swift
//  Workshops
//
//  Created by Marcin Wieclawski on 11/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import XCTest
@testable import Workshops

class PokemonProviderTests: XCTestCase {

    var sut: PokemonProvider!
    
    override func setUp() {
        super.setUp()
        
        sut = PokemonProvider()
    }
    
    override func tearDown() {
        super.tearDown()
        
        sut = nil
    }
    
    func testList() {
        let pokemonList = sut.list()
        XCTAssert(pokemonList.count > 0)
    }
    
    func testPokemonWithName() {
        let pokemon = sut.pokemonWithName("Weedle")
        XCTAssertNotNil(pokemon)
        XCTAssert(pokemon?.attack == 35)
    }
    
}
