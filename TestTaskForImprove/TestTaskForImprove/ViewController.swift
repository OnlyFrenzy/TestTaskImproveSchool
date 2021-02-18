//
//  ViewController.swift
//  TestTaskForImprove
//
//  Created by OnlyFrenzy on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        let arrayService = ArrayService()
        print(arrayService.generateMainArray(n: 7))
    }
}

