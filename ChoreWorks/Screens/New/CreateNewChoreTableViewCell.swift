//
//  CreateNewChoreTableViewCell.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

class CreateNewChoreTableViewCell: UITableViewCell {

    static let kChoreTableViewCellHeight: CGFloat = 68

    @IBOutlet weak var nameInputTextField: UITextField!
    @IBOutlet weak var choreImageView: UIImageView!

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
//    func configure(choreName: String, nextDueDate: NSTimeInterval, choreIconImage: NSURL? = nil) {
//
//        nameInputTextField.placeholder = choreName
//        nextDueDateLabel.text = "Next Due: " + "\(Utility.readableDate(NSDate(timeIntervalSince1970: nextDueDate)))"
//        if let _ = choreIconImage {
//            //
//        } else {
//            choreIconImageView.image = UIImage(named: "Star")
//        }
//    }
}
