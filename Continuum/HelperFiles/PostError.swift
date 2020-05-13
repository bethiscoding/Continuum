//
//  PostError.swift
//  Continuum
//
//  Created by Bethany Morris on 5/12/20.
//  Copyright © 2020 Bethany M. All rights reserved.
//

import Foundation

enum PostError: LocalizedError {
    
    case ckError(Error)
    
    var errorDescription: String {
        switch self{
        case .ckError(let error):
            return error.localizedDescription
        }
    }
}
