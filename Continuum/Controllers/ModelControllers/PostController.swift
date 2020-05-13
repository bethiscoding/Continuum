//
//  PostController.swift
//  Continuum
//
//  Created by Bethany Morris on 5/12/20.
//  Copyright © 2020 Bethany M. All rights reserved.
//

import UIKit

class PostController {
    
    // MARK: - Singleton
    
    static let sharedInstance = PostController()
    
    // MARK: - Source of Truth
    
    var posts: [Post] = []
    
    // MARK: - Methods
    
    func addComment(text: String, post: Post, completion: @escaping (Result<Comment, PostError>) -> Void ) {
        
        let newComment = Comment(text: text, post: post)
        post.comments.append(newComment)
    }
    
    func createPostWith(image: UIImage, caption: String, completion: @escaping (Result<Post?, PostError>) -> Void ) {
        
        let newPost = Post(image: image, caption: caption)
        posts.append(newPost)
    }
    
} //End
