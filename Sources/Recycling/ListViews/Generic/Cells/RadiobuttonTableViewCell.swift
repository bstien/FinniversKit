//
//  Copyright © FINN.no AS, Inc. All rights reserved.
//

import UIKit

open class RadiobuttonTableViewCell: BasicTableViewCell {

    // MARK: - Public properties

    open var radioButton: AnimatedRadioButtonView = {
        let radioButton = AnimatedRadioButtonView(frame: .zero)
        radioButton.translatesAutoresizingMaskIntoConstraints = false
        return radioButton
    }()

    // MARK: - Private properties

    private lazy var stackViewToRadiobuttonConstraint = stackView.leadingAnchor.constraint(equalTo: radioButton.trailingAnchor)

    // MARK: - Setup

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public methods

    open func configure(with viewModel: SelectableTableViewCellViewModel) {
        super.configure(with: viewModel)
        selectionStyle = .none
        radioButton.isHighlighted = viewModel.isSelected
        stackViewToRadiobuttonConstraint.constant = .mediumLargeSpacing
        separatorInset = .leadingInset(56)
        layoutIfNeeded()
    }

    open func animateSelection(isSelected: Bool) {
        radioButton.animateSelection(selected: isSelected)
    }

    open override func prepareForReuse() {
        super.prepareForReuse()
        radioButton.isHighlighted = false
    }

    // MARK: - Private methods

    private func setup() {
        contentView.addSubview(radioButton)
        stackViewLeadingAnchorConstraint.isActive = false

        NSLayoutConstraint.activate([
            stackViewToRadiobuttonConstraint,
            radioButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            radioButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            ])
    }
}
