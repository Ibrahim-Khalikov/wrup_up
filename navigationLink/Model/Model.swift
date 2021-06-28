//
//  Model.swift
//  navigationLink
//
//  Created by cloud_vfx on 28/06/21.
//

import Foundation

struct Model:Decodable, Identifiable {

    var id:Int
    var title: String
    var url: String
}
