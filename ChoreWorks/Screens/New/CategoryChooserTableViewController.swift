//
//  CategoryChooserTableViewController.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/18/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

class CategoryChooserTableViewController: UITableViewController {


    var categories: [String]?
    // MARK: - Lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()
        setupTableView()
    }

    // MARK: - Setup
    private func setupTableView() {

        //        tableView.registerNib(UINib(nibName: String(CreateNewChoreTableViewCell), bundle: NSBundle.mainBundle()), forCellReuseIdentifier: String(CreateNewChoreTableViewCell))
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Presentation

    static func presentScreen(fromController: UIViewController) {
        guard
            let navigationController = fromController.navigationController,
            let controller = UIViewController.loadViewControllerFromStoryboard(CategoryChooserTableViewController)
            else { return }

        navigationController.definesPresentationContext = true
        navigationController.providesPresentationContextTransitionStyle = true
        navigationController.pushViewController(controller, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension CategoryChooserTableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return (categories?.count ?? 0) + 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = UITableViewCell()

        guard let categories = categories else { return cell }
        if indexPath.row == 0 {
            cell.textLabel?.text = "Create new category"
            cell.textLabel?.textColor = UIColor.darkGrayColor()
        } else {
            cell.textLabel?.text = categories[indexPath.row + 1]
        }
        return cell
    }
}
