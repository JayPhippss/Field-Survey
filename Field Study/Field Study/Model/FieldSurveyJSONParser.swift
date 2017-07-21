//
//  FieldSurveyJSONParser.swift
//  Field Study
//
//  Created by Jaylin Phipps on 7/20/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import Foundation

class FieldsSurveyJSONParser {
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldsSurvey] {
        var fieldSurveys = [FieldsSurvey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any],
        let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classificationName = observation["classification"],
                        let title = observation["title"],
                        let description = observation["description"],
                        let dateString = observation["date"],
                        let date = dateFormatter.date(from: dateString){
                            
                            if let fieldSurvey = FieldsSurvey(classificationName: classificationName, title: title, description: description, date: date) {
                                fieldSurveys.append(fieldSurvey)
                            }
                    }
                }
            }
        }
    }
        return fieldSurveys
}
}
