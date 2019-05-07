//
//  ViewController.swift
//  DecodingJsonUsingCodable
//
//  Created by Steve JobsOne on 4/25/19.
//  Copyright © 2019 MobioApp Limited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDirectionLabel: UILabel!
    @IBOutlet weak var coordLabel: UILabel!
    
    private let apiManager = APIManager()
    private(set) var windViewModel: WindViewModel?
    
    var searchResult: CurrentWeather? {
        didSet {
            guard let searchResult = searchResult else { return }
            windViewModel = WindViewModel.init(currentWeather: searchResult)
            DispatchQueue.main.async {
                self.updateLabels()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getWeather()
    }
    
    @IBAction func getDataButtonPressed(_ sender: Any) {
        getWeather()
    }
}

extension ViewController {
    
    private func updateLabels() {
        guard let windViewModel = windViewModel else { return }
        locationLabel.text = windViewModel.locationString
        windSpeedLabel.text = windViewModel.windSpeedString
        windDirectionLabel.text = windViewModel.windDegString
        coordLabel.text = windViewModel.coordString
    }
    
    private func getWeather() {
        apiManager.getWeather() { (weather, error) in
            if let error = error {
                print("Get weather error: \(error.localizedDescription)")
                return
            }
            guard let weather = weather  else { return }
            self.searchResult = weather
        }
    }
}


