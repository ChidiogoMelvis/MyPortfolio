//
//  MyProjectModel.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import Foundation
import UIKit

struct Projects {
    var projectName: String
    var projectImage: UIImage?
}

var myProjectsArray = [
    Projects(projectName: "Music playlist App", projectImage: UIImage(named: "projectSeven")),
   Projects(projectName: "E-commerce App", projectImage: UIImage(named: "projectThree")),
   Projects(projectName: "Mapkit", projectImage: UIImage(named: "projectSix")),
   Projects(projectName: "Notes App", projectImage: UIImage(named: "projectFive"))
]


