//
//  BusinessesVC.swift
//  ReactiveYelpExample
//
//  Created by Louis Basile on 3/9/18.
//  Copyright © 2018 Louis Basile. All rights reserved.
//

import UIKit

class BusinessesVC: UIViewController {
    @IBOutlet var tableView: UITableView!
    let cellReuseIdentifier = "BusinessTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellReuseIdentifier, bundle: nil), forCellReuseIdentifier: "BusinessTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension BusinessesVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! BusinessTableViewCell
        
        let urlString = "https://s3-media1.fl.yelpcdn.com/bphoto/7JPZ6suN-0qmxupNJNCXRw/o.jpg"
        let url = URL(string: urlString)!
        ImageDownloader.imageFromURL(url: url) { (image, error) in
            DispatchQueue.main.async {
                cell.businessImageView.image = image
            }
        }
        return cell
    }
}

extension BusinessesVC: UITableViewDelegate {
    
}

