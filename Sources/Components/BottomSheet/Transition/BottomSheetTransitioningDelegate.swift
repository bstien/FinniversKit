//
//  Copyright © 2018 FINN.no. All rights reserved.
//

import UIKit

class BottomSheetTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {

    var presentationController: BottomSheetPresentationController?
    weak var presentationControllerDelegate: BottomSheetPresentationControllerDelegate?

    private let height: BottomSheet.Height
    private let appearance: BottomSheet.Appearance
    private let interactionController: BottomSheetInteractionController
    private let animationController: BottomSheetAnimationController

    init(height: BottomSheet.Height, appearance: BottomSheet.Appearance) {
        self.height = height
        self.appearance = appearance
        animationController = BottomSheetAnimationController()
        interactionController = BottomSheetInteractionController(animationController: animationController)
    }

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        presentationController = BottomSheetPresentationController(
            presentedViewController: presented,
            presenting: presenting,
            height: height,
            appearance: appearance,
            interactionController: interactionController
        )
        presentationController?.presentationControllerDelegate = presentationControllerDelegate
        return presentationController
    }

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return animationController
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return animationController
    }

    func interactionControllerForPresentation(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return interactionController
    }

    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return interactionController
    }
}
