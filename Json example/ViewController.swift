//
//  ViewController.swift
//  Json example
//
//  Created by tawanda chandiwana on 2021/07/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = "https://api.sunrise-sunset.org/json?date=2020-01-01&lat=-74.0060&lng= 40.7128&formatted=0"
        getData(from: url)
    }
    private func getData(from url: String){
     URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
            guard let data = data, error == nil else {
                print("error occured \(String(describing: error))")
                return
            }
            var results: Response?
            do{
                results = try JSONDecoder().decode(Response.self, from: data)
            }catch{
                print("error \(error.localizedDescription)")
            }
            guard let json = results else{
                return
            }
            print(json.results.sunrise)
            print(json.results.astronomical_twighlight_begin)
            print(json.results.civil_twighlight_begin)
            print(json.results.naughtical_twighlight_begin)
     }.resume()
    }
    
}

