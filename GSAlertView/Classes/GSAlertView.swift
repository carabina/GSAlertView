//
//  GSAlertView.swift
//  GSAlertView
//
//  Created by Abhishek Kumar Ravi on 17/03/18.
//

import Foundation
import UIKit

public class GSAlertView: UIView, GSAlertProtocol {

    public var backgroundView: UIView = UIView()
    public var alertView: UIView = UIView()

    public override init(frame: CGRect) {
        super.init(frame: frame)

    }

    public convenience init(title:String, image:UIImage) {
        self.init(frame: UIScreen.main.bounds)

        showAlertWithImage(title, image)
    }

    public convenience init(title:String, description: String) {
        self.init(frame: UIScreen.main.bounds)

        showAlertWithDescription(title, description)
    }

    public convenience init() {
        self.init(frame: UIScreen.main.bounds)

    }

    required public init?(coder aDecoder: NSCoder) {

        fatalError("init(coder:) has not been implemented")
    }


    func showAlertWithImage(_ title: String, _ image: UIImage) {

        alertView.clipsToBounds = true

        // Background View
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        backgroundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTappedOnBackgroundView)))
        addSubview(backgroundView)

        //Alert View
        let dialogWidth = frame.width - 64
        let titleLabel = UILabel(frame: CGRect(x: 8, y: 8, width: dialogWidth-16, height: 30))
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: titleLabel.font.pointSize)
        titleLabel.textAlignment = .center
        alertView.addSubview(titleLabel)

        let sepratorView = UIView()
        sepratorView.frame.origin = CGPoint(x: 0, y: titleLabel.frame.height + 8)
        sepratorView.frame.size = CGSize(width: dialogWidth, height: 1)
        sepratorView.backgroundColor = UIColor.groupTableViewBackground
        alertView.addSubview(sepratorView)

        let imageView = UIImageView()
        imageView.frame.origin = CGPoint(x: 8, y: sepratorView.frame.height + sepratorView.frame.origin.y + 8)
        imageView.frame.size = CGSize(width: dialogWidth-16, height: dialogWidth - 16)
        imageView.image = image
        imageView.layer.cornerRadius = 4
        imageView.clipsToBounds = true
        alertView.addSubview(imageView)

        let dialogHeight = titleLabel.frame.height + 8 + sepratorView.frame.height + 8 + imageView.frame.height + 8
        alertView.frame.origin = CGPoint(x: 32, y: frame.height)
        alertView.frame.size = CGSize(width: frame.width - 64, height: dialogHeight)
        alertView.backgroundColor = UIColor.white
        alertView.layer.borderColor = UIColor.lightGray.cgColor
        alertView.layer.borderWidth = 0.5
        alertView.layer.cornerRadius = 6
        addSubview(alertView)

    }

    func showAlertWithDescription(_ title: String, _ description: String) {

        alertView.clipsToBounds = true

        // Background View
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        backgroundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTappedOnBackgroundView)))
        addSubview(backgroundView)

        //Alert View
        let dialogWidth = frame.width - 64
        let titleLabel = UILabel(frame: CGRect(x: 8, y: 8, width: dialogWidth-16, height: 30))
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: titleLabel.font.pointSize)
        titleLabel.textAlignment = .center
        alertView.addSubview(titleLabel)

        let sepratorView = UIView()
        sepratorView.frame.origin = CGPoint(x: 0, y: titleLabel.frame.height + 8)
        sepratorView.frame.size = CGSize(width: dialogWidth, height: 1)
        sepratorView.backgroundColor = UIColor.groupTableViewBackground
        alertView.addSubview(sepratorView)

        let descriptionLabel = UILabel()
        descriptionLabel.frame.origin = CGPoint(x: 8, y: sepratorView.frame.height + sepratorView.frame.origin.y + 8)
        descriptionLabel.frame.size = CGSize(width: dialogWidth-16, height: 70)
        descriptionLabel.text = description
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.textColor = UIColor.darkGray
        descriptionLabel.clipsToBounds = true
        alertView.addSubview(descriptionLabel)

        let dialogHeight = titleLabel.frame.height + 8 + sepratorView.frame.height + 8 + descriptionLabel.frame.height + 8
        alertView.frame.origin = CGPoint(x: 32, y: frame.height)
        alertView.frame.size = CGSize(width: frame.width - 64, height: dialogHeight)
        alertView.backgroundColor = UIColor.white
        alertView.layer.borderColor = UIColor.lightGray.cgColor
        alertView.layer.borderWidth = 0.5
        alertView.layer.cornerRadius = 6
        addSubview(alertView)

    }



    @objc func didTappedOnBackgroundView(){
        dismiss(animated: true)
    }

}
