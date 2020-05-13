//
//  TabBarViewController.swift
//  Continuum
//
//  Created by Bethany Morris on 5/12/20.
//  Copyright © 2020 Bethany M. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

} //End

extension TabBarViewController: UITabBarControllerDelegate  {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {

        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
          return false // Make sure you want this as false
        }

        if fromView != toView {
            UIView.transition(from: fromView, to: toView, duration: 0.4, options: [.transitionFlipFromRight], completion: nil)
        }

        return true
    }
}
