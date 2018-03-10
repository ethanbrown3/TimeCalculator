//
//  ViewController.swift
//  Time Calculator
//
//  Created by Ethan Brown on 2/18/18.
//  Copyright © 2018 Ethan Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate{

    var timeShiftArray : [TimeShift] = []
    
    @IBOutlet weak var shiftTableView: UITableView!
    @IBOutlet weak var totalHoursLabel: UILabel!
    @IBOutlet weak var totalMinutesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shiftTableView.delegate = self
        shiftTableView.dataSource = self
        shiftTableView.delegate = self
        
        shiftTableView.register(UINib(nibName: "TimeShiftCell", bundle: nil), forCellReuseIdentifier: "customTimeShiftCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "customTimeShiftCell",
            for: indexPath
            ) as! TimeShiftCell
        let newTimeShift = TimeShift()
        newTimeShift.startTime = "01:00 AM"
        newTimeShift.endTime = "05:00 AM"
        newTimeShift.totalTime = "04:00"
        timeShiftArray.append(newTimeShift)
        
        cell.StartTime.text = timeShiftArray[indexPath.row].startTime
        cell.EndTime.text = timeShiftArray[indexPath.row].endTime
        cell.TotalShiftTime.text = timeShiftArray[indexPath.row].totalTime
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }


}

