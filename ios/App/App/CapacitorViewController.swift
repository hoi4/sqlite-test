//
//  CapacitorViewController.swift
//  App
//
//  Created by Philipp Heuer on 13.11.25.
//


import Capacitor
import UIKit

class CapacitorViewController: CAPBridgeViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override func capacitorDidLoad() {
    bridge?.registerPluginInstance(AmplitudePlugin())
  }
}
