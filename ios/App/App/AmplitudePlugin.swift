//
//  AmplitudePlugin.swift
//  App
//
//  Created by Philipp Heuer on 13.11.25.
//

import SQLite3 // commenting out the SQLite3 import causes the build to succeed
import Capacitor
import Foundation

@objc(AmplitudePlugin)
public class AmplitudePlugin: CAPPlugin, CAPBridgedPlugin {
  public var identifier = "AmplitudePlugin"
  public var jsName = "AmplitudePlugin"

  public var pluginMethods: [CAPPluginMethod] = [
    CAPPluginMethod(name: "test", returnType: CAPPluginReturnPromise),
  ]

  @objc func test(_ call: CAPPluginCall) {
    call.resolve()
  }
}
