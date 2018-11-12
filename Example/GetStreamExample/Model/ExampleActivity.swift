//
//  ExampleActivity.swift
//  GetStreamExample
//
//  Created by Alexey Bukhtin on 12/11/2018.
//  Copyright © 2018 Alexey Bukhtin. All rights reserved.
//

import Foundation
import GetStream

final class ExampleActivity: Activity {
    private enum CodingKeys: String, CodingKey {
        case tweet
    }
    
    var tweet: String?
    
    override var description: String {
        return super.description.appending(" tweet: \(tweet ?? "no value")")
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tweet = try container.decode(String.self, forKey: .tweet)
        try super.init(from: decoder)
    }
}
