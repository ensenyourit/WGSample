//
//  ViewController.swift
//  SampleWGSampleProject
//
//  Created by apple on 01.07.2023.
//

import UIKit
import SampleWG

class ViewController: UIViewController {

    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        let sampleWG = SWG()
        guard let image = UIImage(named: "woundImage") else { return }
        sampleWG.processImage(image: image) { processedImage in
            self.imageView.image = processedImage
        }
    }
}

