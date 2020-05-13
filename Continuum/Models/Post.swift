//
//  Post.swift
//  Continuum
//
//  Created by Bethany Morris on 5/12/20.
//  Copyright © 2020 Bethany M. All rights reserved.
//

import UIKit
import CloudKit

class Post {
    
    var photoData: Data?
    let timestamp: Date
    let caption: String
    var comments: [Comment]
    var image: UIImage? {
        get {
            guard let photoData = photoData else { return nil }
            return UIImage(data: photoData)
        } set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    
    init(image: UIImage, timestamp: Date = Date(), caption: String, comments: [Comment] = []) {
        self.timestamp = timestamp
        self.caption = caption
        self.comments = comments
        self.image = image
    }
    
} //End
