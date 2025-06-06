//
//  NavigationController.swift
//  AutoLayout
//
//  Created by 정재성 on 6/8/25.
//

import UIKit

final class NavigationController: UINavigationController {
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationBar.prefersLargeTitles = true
    navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
  }
}
