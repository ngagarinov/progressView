//
//  ProgressView.swift
//  progressViewTest
//
//  Created by Никита Гагаринов on 08.05.2020.
//  Copyright © 2020 Никита Гагаринов. All rights reserved.
//

import UIKit

final class ProgressView: UIView {

    // MARK: - Private Properties

    private var numberOfBlocks = 4
    private var currentBlock = 1
    private lazy var stackView = UIStackView()

    // MARK: - Internal Methods

    func configure(numberOfBlocks: Int, currentBlock: Int) {
        self.numberOfBlocks = numberOfBlocks
        self.currentBlock = currentBlock
        addBlocks()
        paintBlocks()
    }

    func changeCurrentBlock(to currentBlock: Int) {
        self.currentBlock = currentBlock
        paintBlocks()
    }

}

// MARK: - Private Methods

private extension ProgressView {

    func configureStackView() {
        self.stackView.distribution = .fill
        self.stackView.axis = .horizontal
        self.stackView.alignment = .fill
        self.stackView.spacing = 8

        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)

        NSLayoutConstraint.activate([
            self.stackView.topAnchor.constraint(equalTo: topAnchor),
            self.stackView.heightAnchor.constraint(equalTo: heightAnchor),
            self.stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            self.stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    func addBlocks() {
        self.configureStackView()
        for _ in 0..<numberOfBlocks {
            let block = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 4))
            block.backgroundColor = UIColor(red: 0.831, green: 0.835, blue: 0.835, alpha: 1)
            block.layer.cornerRadius = 2
            block.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                block.heightAnchor.constraint(equalToConstant: 4),
                block.widthAnchor.constraint(equalToConstant: 16)
            ])
            self.stackView.addArrangedSubview(block)
        }
    }

    func paintBlocks() {
        for (index, block) in stackView.arrangedSubviews.enumerated() {
            if index < currentBlock {
                block.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
            } else {
                block.backgroundColor = UIColor(red: 0.831, green: 0.835, blue: 0.835, alpha: 1)
            }
        }
    }

}
