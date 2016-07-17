//
//  CreateNewChoreViewController.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

class CreateNewChoreViewController: UIViewController {

    @IBOutlet weak var frequencyPickerView: UIPickerView!
    @IBOutlet weak var CTAButton: UIButton!

    // MARK: - Lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()
        setupUI()
        setupPickerView()
    }
    
    // MARK: - Setup
    private func setupUI() {

        CTAButton.style()
    }

    private func setupPickerView() {

        frequencyPickerView.dataSource = self
        frequencyPickerView.delegate = self
    }


    @IBAction func didTapCTA(sender: AnyObject) {

        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

extension CreateNewChoreViewController: UIPickerViewDelegate {

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        return ChoreFrequency.fromHashValue(row)?.rawValue
    }
}

extension CreateNewChoreViewController: UIPickerViewDataSource {

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {

        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        return ChoreFrequency.count
    }
}
