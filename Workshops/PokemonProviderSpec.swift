//
//  PokemonProviderSpec.swift
//  Workshops
//
//  Created by Marcin Wieclawski on 11/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import Workshops

class PokemonProviderSpec: QuickSpec {

    override func spec() {
        var sut: PokemonProvider!

        beforeEach {
            sut = PokemonProvider()
        }

        afterEach {
            sut = nil
        }

        describe("list") {
            var pokemonList: [Pokemon]!

            beforeEach({
                pokemonList = sut.list()
            })

            it("should have 21 pokemons") {
                expect(pokemonList.count) == 21
            }
        }
    }

}
