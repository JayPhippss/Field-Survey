//
//  FieldObservationViewController.swift
//  Field Study
//
//  Created by Jaylin Phipps on 7/20/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class FieldObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var fieldObservationsTableView: UITableView!
    
    let fieldSurveys = FieldSurveyJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        
        self.title = "Field Survey"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurveys.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservationCell", for: indexPath)
        
        if let cell = cell as? FieldObservationTableViewCell {
            let fieldsSurvey = fieldSurveys[indexPath.row]
            cell.observationIconImageView.image = fieldsSurvey.classification.image
            cell.titleLabel.text = fieldsSurvey.title
            cell.dateLabel.text = dateFormatter.string(from: fieldsSurvey.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldObservationDetailViewController,
            let row = fieldObservationsTableView.indexPathForSelectedRow?.row {
            destination.fieldSurveys = fieldSurveys[row]
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
