//
//  GSViewWithTopImage.swift
//  GSAlertView
//
//  Created by Abhishek Kumar Ravi on 18/03/18.
//

import Foundation

extension GSAlertView {

    func showAlertWithTopImage(_ title: String,_ description: String, _ image: UIImage) {

        alertView.clipsToBounds = true

        // Background View
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        backgroundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTappedOnBackgroundView)))
        addSubview(backgroundView)

        //Alert View
        let dialogWidth = frame.width - 50

        let imageView = UIImageView()
        imageView.frame.origin = CGPoint(x: 0, y: 0)
        imageView.frame.size = CGSize(width: dialogWidth, height: dialogWidth)
        imageView.image = image
        imageView.clipsToBounds = true
        alertView.addSubview(imageView)

        let titleLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.height + 8, width: dialogWidth, height: 20))
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: titleLabel.font.pointSize)
        titleLabel.textAlignment = .center
        alertView.addSubview(titleLabel)

        let descriptionLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.height + 8 + titleLabel.frame.height + 8, width: dialogWidth, height: 30))
        descriptionLabel.text = description
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont.systemFont(ofSize: 12)
        descriptionLabel.textColor = UIColor.darkGray
        alertView.addSubview(descriptionLabel)

        let dialogHeight = imageView.frame.height + titleLabel.frame.height + 8 + 8 + descriptionLabel.frame.height + 8
        alertView.frame.origin = CGPoint(x: 20, y: frame.height)
        alertView.frame.size = CGSize(width: frame.width - 64, height: dialogHeight)
        alertView.backgroundColor = UIColor.white
        alertView.layer.borderColor = UIColor.lightGray.cgColor
        alertView.layer.borderWidth = 0.5
        addSubview(alertView)

    }
    
}
