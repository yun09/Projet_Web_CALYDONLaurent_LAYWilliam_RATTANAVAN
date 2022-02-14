//
//  ViewController.swift
//  IOS Project 2.0
//
//  Created by Nicolas Thong on 14/02/2022.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string : "https://airtable.com/appXKn0DvuHuLw4DV/tblAAOFAlGnrh26gL/viw1tOGxKP9X6O2La?blocks=hide" )!
        getData(from: url)
    }

    private func getData(from url: URL){
        
        let accessToken = "keyeUoaJDXDZ57O7m"
        
        var request = URLRequest(url: url)
            request.timeoutInterval = 100
            request.httpMethod = "GET"
        
        request.setValue(accessToken, forHTTPHeaderField: "Authorization")
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: request, completionHandler: {(data, response, error) in
            
            //print("yolo  \(response)")
            
            guard let data = data, error == nil else {
                print("Something went wrong")
               // print("yolo2  \(response)")
                return
            }
            
            print("\nAPI Call Sucess\n")
            
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch {
                print("Convention failed \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
            print(json.results.activity)
            print(json.results.type)
            print(json.results.note)
            
        })
        
        task.resume()
        
    }
    
    
}

struct Response : Codable {
    let results : MyResult
}

struct MyResult: Codable {
    let activity: String
    let type : String
    let note : String
    let location : String
    let speaker : String
    
}

    
