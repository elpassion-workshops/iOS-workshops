//
//  Created by Marcin Wieclawski on 09/09/16.
//  Copyright © 2016 El Passion. All rights reserved.
//

import Foundation
import UIKit

struct Pokemon {
    
    let name: String
    let attack: NSInteger
    let defense: NSInteger
    let weight: NSInteger
    let image: Base64Image
    
}

struct Base64Image {
    
    let string: String
    
}

extension Base64Image {
    
    func toUIImage() -> UIImage? {
        if let decodedData = NSData(base64EncodedString: string, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters) {
            let decodedimage = UIImage(data: decodedData)
            return decodedimage
        }
        return nil
    }
    
}
