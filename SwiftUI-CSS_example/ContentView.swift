//
//  ContentView.swift
//  SwiftUI-CSS_example
//
//  Created by liang on 2019/8/10.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI
import SwiftUI_CSS

// responsive

let responsive = Responsive(UIScreen.main.bounds.size.width / 375)

// color
let NormalDescColor = Color(red: 0x77/0xff, green: 0x77/0xff, blue: 0x77/0xff)
let PrimaryLabelColor = Color(red: 0x33/0xff, green: 0x33/0xff, blue: 0x33/0xff)

let SourceCodeColor = Color.blue
// the definition of class name variable
let languageLogo_clsName = CSSStyle([
    .width(responsive.r(100)),
    .height(responsive.r(100)),
    .cornerRadius(responsive.r(10)),
    .paddingTLBT(responsive.r(10), 0, responsive.r(15),0)
])

let languageTitle_clsName = CSSStyle([
    .font(.headline),
    .foregroundColor(Color(red: 0x33/0xff, green: 0x33/0xff, blue: 0x33/0xff)),
    .paddingEdges([.bottom], responsive.r(10))
])

let languageDesc_clsName = CSSStyle([
    .font(.footnote),
    .paddingHorizontal(responsive.r(10)),
    .foregroundColor(NormalDescColor),
    .lineSpacing(2),
    .flexHeight(min: responsive.r(100), max: .infinity)
])

let wikiDesc_clsName = CSSStyle([
    .font(Font.system(size: responsive.r(12))),
    .foregroundColor(NormalDescColor)
])

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            Text("The history of languages")
                .setStyle([
                    .font(.title),
                    .height(responsive.r(40))
                ])
            HTML5()
            
            Swift()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
#endif
