//
//  Contentmodel.swift
//  navigationLink
//
//  Created by cloud_vfx on 28/06/21.
//

import Foundation

class Contentmodel: ObservableObject {
    var modules = [Model]()
    
    init(){
        getLocaldata()
    }

    func getLocaldata(){
        
        let urlString = Bundle.main.path(forResource: "Data", ofType: "json")
        let url = URL(fileURLWithPath:String(urlString!))
        
        do{
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        
            do{
                let modules = try decoder.decode([Model].self, from: data)
            
                self.modules = modules
            
            }
            catch{
                print("not")
            }
            
        }
        catch{
            print("not find")
        }
    }

//  func getRemoteData(){
//
//    let urlString = "https://codewithchris.github.io/Module5Challenge/Data.json "
//    let url = URL(string: urlString)
//
//    guard url != nil else {
//        return
//    }
//    let request = URLRequest(url: url!)
//
//    let session = URLSession.shared
//
//
//    let dataTask = session.dataTask(with: request) { data, response, error   in
//
//        guard error == nil else {
//            return
//        }
//        do{
//
//            let decoder = JSONDecoder()
//
//            let modules = try decoder.decode([Model].self, from: data!)
//
//            self.modules = modules
//        }
//        catch{
//
//        }
//    }
//    dataTask.resume()
//  }
//}
}
