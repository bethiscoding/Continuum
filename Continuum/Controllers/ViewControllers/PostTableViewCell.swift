//
//  PostTableViewCell.swift
//  Continuum
//
//  Created by Bethany Morris on 5/12/20.
//  Copyright © 2020 Bethany M. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    // MARK: - Outlets & Properties
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentsCountLabel: UILabel!
    
    var post: Post? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Actions & Methods
    
    func updateViews() {
        postImageView.image = post?.image
        captionLabel.text = post?.caption
        commentsCountLabel.text = "\(post?.comments.count ?? 0) Comments"
    }

} //End
