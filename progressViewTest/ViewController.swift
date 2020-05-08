//
//  ViewController.swift
//  progressViewTest
//
//  Created by Никита Гагаринов on 08.05.2020.
//  Copyright © 2020 Никита Гагаринов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let progressView = ProgressView()

    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.configure(numberOfBlocks: 4, currentBlock: 1)
        let leftItem = UIBarButtonItem(customView: progressView)
        navigationItem.leftBarButtonItem = leftItem

        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.isTranslucent = true
    }

    @IBAction func paintBlock(_ sender: Any) {
        progressView.changeCurrentBlock(to: 3)
    }

    @IBAction func discard(_ sender: Any) {
        progressView.changeCurrentBlock(to: 1)
    }
}

