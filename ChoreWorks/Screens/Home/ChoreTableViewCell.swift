//
//  ChoreTableViewCell.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

class ChoreTableViewCell: UITableViewCell {

    @IBOutlet weak var choreIconImageView: UIImageView!
    @IBOutlet weak var choreNameLabel: UILabel!
    @IBOutlet weak var nextDueDateLabel: UILabel!

    static let kChoreTableViewCellHeight: CGFloat = 68

    // MARK: - Lifecycle

    override func awakeFromNib() {

        super.awakeFromNib()
        setup()
    }

    // MARK: - Setup

    private func setup() {
        //styling
    }

    // MARK: - Public Interface
    func configure(choreName: String, nextDueDate: NSTimeInterval, choreIconImage: NSURL? = nil) {

        choreNameLabel.text = choreName
        nextDueDateLabel.text = "Next Due: " + "\(Utility.readableDate(NSDate(timeIntervalSince1970: nextDueDate)))"
        if let _ = choreIconImage {
            //
        } else {
            choreIconImageView.image = UIImage(named: "Star")
        }
    }
}
