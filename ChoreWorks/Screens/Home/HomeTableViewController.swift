//
//  HomeTableViewController.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    private var chores: [[Chore]]?

    // MARK: - Lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()
        setupTableView()
        reloadData()
    }


    // MARK: - Setup
    private func setupTableView() {

        tableView.registerNib(UINib(nibName: String(ChoreTableViewCell), bundle: NSBundle.mainBundle()), forCellReuseIdentifier: String(ChoreTableViewCell))
        tableView.rowHeight = ChoreTableViewCell.kChoreTableViewCellHeight
    }


    private func reloadData() {

        let chore0 = Chore(name: "Change pee pads",
                           category: "Cats",
                           nextDueDate: NSDate().timeIntervalSince1970,
                           iconImageURL: nil)
        let chore1 = Chore(name: "Clean bathroom",
                           category: "Cleaning",
                           nextDueDate: NSDate().timeIntervalSince1970,
                           iconImageURL: nil)

        chores = [ [chore0],
                   [chore1]]
        tableView.reloadData()
    }

}

// MARK: - UITableViewDelegate
extension HomeTableViewController {


}

// MARK: - UITableViewDataSource
extension HomeTableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return chores?[section].count ?? 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        guard let chores = chores else { return UITableViewCell() }
        let choreCell = tableView.dequeueReusableCellWithIdentifier(String(ChoreTableViewCell)) as! ChoreTableViewCell
        let section = indexPath.section
        let row = indexPath.row
        let chore = chores[section][row]
        choreCell.configure(chore.name, nextDueDate: chore.nextDueDate, choreIconImage: chore.iconImageURL)
        return choreCell
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return chores?.count ?? 1
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return chores?[section][0].category ?? ""
    }
}