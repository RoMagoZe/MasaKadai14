//
//  Fruits.swift
//  MasaKadai14
//
//  Created by Mina on 2023/05/18.
//

import Foundation

struct Fruits {
    // KeyValuePairsはイミュータブル（変更不可）な型であるため要素を追加できない
    // let fruits: KeyValuePairs = ["りんご": false, "みかん": true, "バナナ": false, "パイナップル": true]

    static let defaultItems: [(String, Bool)] = [("りんご", false),
                                    ("みかん", true),
                                    ("バナナ", false),
                                    ("パイナップル", true)]
}
