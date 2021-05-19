//
//  ViewController.swift
//  Tutorial07
//
//  Created by Kaito Hattori on 2021/05/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // stepper
        self.stepper.minimumValue = 0   // 最小値
        self.stepper.maximumValue = 5   // 最大値
        self.stepper.stepValue = 1      // １回押される毎に±する数
        // slider
        self.slider.minimumValue = 0    // 最小値
        self.slider.maximumValue = 100  // 最大値
        self.slider.value = 50          // 現在値
        self.progressView.progress = 0.5    // progresの値。0.0から1.0までをとる
    }
    
    @IBAction func onChangedProgress(_ sender: Any) {
        self.sliderLabel.text = String(self.slider.value)
    }
    
    @IBAction func onClickStepper(_ sender: Any) {
        self.stepperLabel.text = String(stepper.value)
        self.progressLabel.text = String(stepper.value / stepper.maximumValue)
        self.progressView.setProgress(Float(stepper.value / stepper.maximumValue), animated: true)
    }
}

