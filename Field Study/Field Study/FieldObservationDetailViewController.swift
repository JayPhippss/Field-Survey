//
//  FieldObservationDetailViewController.swift
//  Field Study
//
//  Created by Jaylin Phipps on 7/20/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    
    var fieldSurveys: FieldsSurvey?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var observationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        observationIconImageView.image = fieldSurveys?.classification.image
        titleLabel.text = fieldSurveys?.title
        descriptionText.text = fieldSurveys?.description
        
        if let date = fieldSurveys?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        self.title = "Observation"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
