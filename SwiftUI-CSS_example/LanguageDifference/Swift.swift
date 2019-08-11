//
//  Swift.swift
//  SwiftUI-CSS_example
//
//  Created by liang on 2019/8/11.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

let wikiRow_clsName = CSSStyle([
    .paddingEdges([.top], 5),
    .flexHeight(min: 40, max: .infinity)
])

struct Swift: View {
    var body: some View {
        VStack {
            Image("image-swift")
                .resizable()
                .scaledToFit()
                .addClassName(languageLogo_clsName)
  
            Text("Swift")
                .addClassName(languageTitle_clsName)
            
     
            Text("Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, macOS, watchOS, tvOS, Linux, and z/OS. ")
                .addClassName(languageDesc_clsName)
  
            List() {
                Section(header: Text("Version history")) {
                    
                    HStack {
                        Text("Date").font(.subheadline)
                        Spacer()
                        Text("Version").font(.subheadline)
                    }
                    Group {
                        HStack {
                            Text("September 9, 2014")
                            Spacer()
                            Text("Swift 1.0")
                        }
                        HStack {
                            Text("October 22, 2014")
                            Spacer()
                            Text("Swift 1.1")
                        }
                        HStack {
                            Text("April 8, 2015")
                            Spacer()
                            Text("Swift 1.2")
                        }
                        HStack {
                            Text("September 21, 2015")
                            Spacer()
                            Text("Swift 2.0")
                        }
                        HStack {
                            Text("September 13, 2016")
                            Spacer()
                            Text("Swift 3.0")
                        }
                        HStack {
                            Text("September 19, 2017")
                            Spacer()
                            Text("Swift 4.0")
                        }
                        HStack {
                            Text("September 17, 2018")
                            Spacer()
                            Text("Swift 4.2")
                        }
                        HStack {
                            Text("March 25, 2019 ")
                            Spacer()
                            Text("Swift 5.0")
                        }
                    }.font(.body)
                    .foregroundColor(NormalDescColor)
                }
            }.listStyle(GroupedListStyle())
                .frame(height: 200)

            VStack {
                Divider()
                HStack(alignment: .top) {
                    Text("Designed by:")
                        .font(Font.system(size: 14))
                    
                    Button(action: {
                        
                    }) {
                        Text("Chris Lattner, Doug Gregor, John McCall, Ted Kremenek, Joe Groff, and Apple Inc.")
                           .addClassName(wikiDesc_clsName)
                    }
                    
                    Spacer()
                }.addClassName(wikiRow_clsName)
                
                HStack(alignment: .top) {
                    Text("Influenced by:")
                        .font(Font.system(size: 14))
                    
                    Text("Objective-C,[7] Rust, Haskell, Ruby, Python, C#, CLU,[8] D[9]")
                    .addClassName(wikiDesc_clsName)
                    
                    Spacer()
                }.addClassName(wikiRow_clsName)
            }.padding(EdgeInsets(top: 2, leading: 10, bottom: 10, trailing: 10))
            
        }
    }
}

#if DEBUG
struct Swift_Previews: PreviewProvider {
    static var previews: some View {
        Swift()
    }
}
#endif
