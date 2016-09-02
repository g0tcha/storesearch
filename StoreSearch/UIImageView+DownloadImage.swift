//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by vincent on 02/09/2016.
//  Copyright © 2016 infostrates. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImageWithUrl(url: NSURL) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        
        let downloadTask = session.downloadTaskWithURL(url) { [weak self] url, response, error in
            if error == nil, let url = url, data = NSData(contentsOfURL: url), image = UIImage(data: data) {
                dispatch_async(dispatch_get_main_queue(), {
                    if let strongSelf = self {
                        strongSelf.image = image
                    }
                })
            }
        }
        
        downloadTask.resume()
        return downloadTask
    }
}
