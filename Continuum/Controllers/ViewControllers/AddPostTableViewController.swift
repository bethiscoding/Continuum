//
//  AddPostTableViewController.swift
//  Continuum
//
//  Created by Bethany Morris on 5/12/20.
//  Copyright © 2020 Bethany M. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {

    // MARK: - Outlets & Properties
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var captionTextField: UITextField!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        selectImageButton.setTitle("Select Image", for: .normal)
        postImageView.image = nil
        captionTextField.text = nil
    }

    // MARK: - Actions & Methods
    
    @IBAction func selectImageButtonTapped(_ sender: UIButton) {
        postImageView.image = UIImage(named: "spaceEmptyState")
        selectImageButton.setTitle("", for: .normal)
    }
    
    @IBAction func addPostButtonTapped(_ sender: UIButton) {
        guard let image = postImageView.image, //missing something?? .isEmpty??
              let caption = captionTextField.text
              else { return }
        
        PostController.sharedInstance.createPostWith(image: image, caption: caption) { (result) in
            
        }
        
        self.tabBarController?.selectedIndex = 0
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        self.tabBarController?.selectedIndex = 0
    }

} //End
