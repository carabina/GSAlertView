//
//  GSAlertProtocol.swift
//  GSAlertView
//
//  Created by Abhishek Kumar Ravi on 16/03/18.
//

import Foundation
import UIKit

public protocol GSAlertProtocol {

    func show(animated: Bool)
    func dismiss(animated: Bool)
    var backgroundView: UIView {get set}
    var alertView: UIView {get set}

}

extension GSAlertProtocol where Self:UIView {

    public func show(animated: Bool) {

        self.backgroundView.alpha = 0 // Transaparent
        self.alertView.center = CGPoint(x: self.center.x, y: self.frame.height + self.alertView.frame.height/2)

        UIApplication.shared.delegate?.window??.rootViewController?.view.addSubview(self)

        if animated {

            // Background View Alpha
            UIView.animate(withDuration: 0.33, animations: {
                self.backgroundView.alpha = 0.66
            })

            // Positioning
            UIView.animate(withDuration: 0.33, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 10, options: UIViewAnimationOptions(rawValue: 0), animations: {

                self.alertView.center = self.center

            }, completion: { (status) in

            })
        }
        else {

            self.backgroundView.alpha = 0.66
            self.alertView.center = self.center
        }

    }

    public func dismiss(animated: Bool) {

        if animated {

            UIView.animate(withDuration: 0.33, animations: {
                self.backgroundView.alpha = 0
            })

            UIView.animate(withDuration: 0.33, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 10, options: UIViewAnimationOptions(rawValue: 1), animations: {

                self.alertView.center = CGPoint(x: self.center.x, y: self.frame.height + self.alertView.frame.height/2)
            }, completion: { (_) in

                self.removeFromSuperview()
            })
        }
        else {

            self.removeFromSuperview()
        }

    }
}
