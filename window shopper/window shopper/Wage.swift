//
//  Wage.swift
//  window shopper
//
//  Created by MISHAL ALHAJRI on 12/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import Foundation

struct Wage {
    
    func getHours(for hours : Double, item : Double) -> Int {
        let result = Int(ceil(item / hours))
        return result
        
    }
}
