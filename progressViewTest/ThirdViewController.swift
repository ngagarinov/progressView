//
//  ThirdViewController.swift
//  progressViewTest
//
//  Created by Никита Гагаринов on 08.05.2020.
//  Copyright © 2020 Никита Гагаринов. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: false)

        let progressView = ProgressView()
        progressView.configure(numberOfBlocks: 4, currentBlock: 3)
        let leftItem = UIBarButtonItem(customView: progressView)
        navigationItem.leftBarButtonItem = leftItem
    }
    
    @IBAction func backAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
