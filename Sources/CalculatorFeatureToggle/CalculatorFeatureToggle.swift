//
//  CalculatorFeatureToggle.swift
//  TestLeoVegas
//
//  Created by Gines Sanchez Merono on 2020-07-02.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import Foundation

public struct CalculatorFeatureToggle {
    public let add: Bool
    public let subtract: Bool
    public let multiply: Bool
    public let divide: Bool
    public let sine: Bool
    public let cosine: Bool
    public let bitcoinToDollar: Bool
    public let mapInfo: Bool

    public init(dictionary: [String: Any]? = nil) {
        self.add = dictionary?["add"] as? Bool ?? true
        self.subtract = dictionary?["subtract"] as? Bool ?? true
        self.multiply = dictionary?["multiply"] as? Bool ?? true
        self.divide = dictionary?["divide"] as? Bool ?? true
        self.sine = dictionary?["sine"] as? Bool ?? true
        self.cosine = dictionary?["cosine"] as? Bool ?? true
        self.bitcoinToDollar = dictionary?["bitcoinToDollar"] as? Bool ?? true
        self.mapInfo = dictionary?["mapInfo"] as? Bool ?? true
    }

    public static func offline() -> CalculatorFeatureToggle {
        return CalculatorFeatureToggle(dictionary:
            ["add" : true,
            "subtract" : true,
            "multiply" : true,
            "divide" : true,
            "sine" : true,
            "cosine" : true,
            "bitcoinToDollar" : false,
            "mapInfo" : false])
    }
}
