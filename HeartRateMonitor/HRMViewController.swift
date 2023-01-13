//
//  ViewController.swift
//  HeartRateMonitor
//
//  Created by Hiago Santos Martins Dias on 13/01/23.
//

import UIKit

class HRMViewController: UIViewController {

  @IBOutlet weak var heartRateLabel: UILabel!
  @IBOutlet weak var bodySensorLocationLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Make the digits monospaces to avoid shifting when the numbers change
    heartRateLabel.font = UIFont.monospacedDigitSystemFont(ofSize: heartRateLabel.font!.pointSize, weight: .regular)
  }

  func onHeartRateReceived(_ heartRate: Int) {
    heartRateLabel.text = String(heartRate)
    print("BPM: \(heartRate)")
  }
}

