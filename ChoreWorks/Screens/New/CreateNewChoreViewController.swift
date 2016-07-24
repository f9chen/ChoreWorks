//
//  CreateNewChoreViewController.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

class CreateNewChoreViewController: UITableViewController {

    // MARK: - Lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()
        setupTableView()
    }

    // MARK: - Setup
    private func setupTableView() {

        tableView.registerNib(UINib(nibName: String(CreateNewChoreTableViewCell), bundle: NSBundle.mainBundle()), forCellReuseIdentifier: String(CreateNewChoreTableViewCell))
    }
}

// MARK: - UITableViewDataSource
extension CreateNewChoreViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        switch section {
        case 0: return 1
        case 1: return 2
        default: return 0
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = UITableViewCell()

        switch indexPath.section {
        case 0:
            let createNewChoreCell = tableView.dequeueReusableCellWithIdentifier(String(CreateNewChoreTableViewCell)) as! CreateNewChoreTableViewCell
            return createNewChoreCell
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Pick a category"
            case 1:
                cell.textLabel?.text = "Set the frequency of the chore"
            default: return cell
            }
            return cell
        default: return cell
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 2
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        switch section {
        case 0: return ""
        case 1: return "Chore Details"
        default: return ""
        }
    }
}

// MARK: - UITableViewDelegate
extension CreateNewChoreViewController {

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        switch indexPath.section {
        case 0: return CreateNewChoreTableViewCell.kChoreTableViewCellHeight
        default: return 44
        }
    }

    override func selectRowAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition) {

        switch section {
        case 0:
            //
            case 1
        default:
            <#code#>
        }
    }
}
