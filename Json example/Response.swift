//
//  Response.swift
//  Json example
//
//  Created by tawanda chandiwana on 2021/07/27.
//

import Foundation
import UIKit

struct Response: Codable {
    let id = UUID()
    let results: MyResults
    let status: String = ""
}
struct MyResults {
    let sunrise: String
    let sunset: String
    let solar_noon: String
    let day_length: Int
    let civil_twighlight_begin: String
    let civil_twighlight_end: String
    let naughtical_twighlight_begin: String
    let naughtical_twighlight_end: String
    let astronomical_twighlight_begin: String
    let astronomical_twighlight_end: String
}

