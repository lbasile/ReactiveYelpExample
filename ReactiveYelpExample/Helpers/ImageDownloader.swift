//
//  ImageDownloader.swift
//  ReactiveYelpExample
//
//  Created by Louis Basile on 3/10/18.
//  Copyright © 2018 Louis Basile. All rights reserved.
//

import UIKit

class ImageDownloader {
    static func imageFromURL(url: URL, completion: @escaping (UIImage?, Error?) -> Void) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            var image: UIImage?
            if let data = data {
                image = UIImage(data: data)
            }
            completion(image, error)
        }.resume()
    }
}
