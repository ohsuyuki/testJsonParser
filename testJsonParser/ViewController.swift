//
//  ViewController.swift
//  testJsonParser
//
//  Created by osu on 2018/05/30.
//  Copyright © 2018 osu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let jsonString: String = "{\"id\":1, \"name\":\"Jason\"}"
        do {
            guard let json = try JSONSerialization.jsonObject(with: jsonString.data(using: .utf8)!, options: [.allowFragments]) as? [String: Any] else {
                print("could not parse")
                return
            }
            print("id: \(json["id"]!)")
            print("name: \(json["name"]!)")
        } catch let error {
            print(error)
        }
    }

}

