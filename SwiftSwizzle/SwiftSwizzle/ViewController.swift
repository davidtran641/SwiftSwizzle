//
//  ViewController.swift
//  SwiftSwizzle
//
//  Created by Tran Duc on 8/21/20.
//  Copyright © 2020 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    foo()
  }

  private func track(event: String) {
    print("Event: \(event)")
  }

  dynamic
  func a() {
    print("a")
  }

  func foo() {
    a()
  }
}

extension ViewController {
    @_dynamicReplacement(for: a)
    func trackA() {
      track(event: "Begin a")
      a()
      track(event: "End a")
    }
}
