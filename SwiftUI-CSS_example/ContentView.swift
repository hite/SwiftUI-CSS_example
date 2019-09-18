//
//  ContentView.swift
//  SwiftUI-CSS_example
//
//  Created by liang on 2019/8/10.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI
import SwiftUI_CSS

// color
let NormalDescColor = Color(red: 0x77/0xff, green: 0x77/0xff, blue: 0x77/0xff)
let PrimaryLabelColor = Color(red: 0x33/0xff, green: 0x33/0xff, blue: 0x33/0xff)

let SourceCodeColor = Color.blue
// the definition of class name variable
let languageLogo_clsName = CSSStyle([
    .width(100),
    .height(100),
    .cornerRadius(10),
    .paddingTLBT(10, 0, 15,0)
])

let languageTitle_clsName = CSSStyle([
    .font(.headline),
    .foregroundColor(Color(red: 0x33/0xff, green: 0x33/0xff, blue: 0x33/0xff)),
    .paddingEdges([.bottom], 10)
])

let languageDesc_clsName = CSSStyle([
    .font(.footnote),
    .paddingHorizontal(10),
    .foregroundColor(NormalDescColor),
    .lineSpacing(2),
    .flexHeight(min: 100, max: .infinity)
])

let wikiDesc_clsName = CSSStyle([
    .font(Font.system(size: 12)),
    .foregroundColor(NormalDescColor)
])

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            Text("The history of languages")
                .setStyle([
                    .font(.title),
                    .height(40)
                ])
            HTML5()
            
            Swift()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
