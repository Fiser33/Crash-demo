//
//  ViewController.swift
//  Bond_test
//
//  Created by Jakub Fiser on 24/04/2019.
//  Copyright © 2019 Jakub Fiser. All rights reserved.
//

import UIKit
import Bond


class ViewController: UIViewController {

    let arr = MutableObservableArray<String>(["one","two","three"])

    override func viewDidLoad() {
        super.viewDidLoad()

        // application will crash here
        arr.batchUpdate { array in
            array.remove(at: 0)
            array.insert("test", at: 0)
        }
    }


}

