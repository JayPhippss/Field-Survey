//
//  FieldSurveyJSONLoader.swift
//  Field Study
//
//  Created by Jaylin Phipps on 7/20/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldsSurvey] {
        var observations = [FieldsSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldsSurveyJSONParser.parse(data)
        }
        
        return observations
    }
}
