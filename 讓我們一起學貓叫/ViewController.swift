//
//  ViewController.swift
//  讓我們一起學貓叫
//
//  Created by Rose on 2021/4/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // 輸入文字、音調速度
    @IBOutlet weak var sayTextField: UITextField!
    @IBOutlet weak var speakMultiplierText: UILabel!
    @IBOutlet weak var speakRateText: UILabel!
    @IBOutlet weak var speakMultiplier: UISlider!
    @IBOutlet weak var speakRate: UISlider!
    // 播放告白
    @IBOutlet weak var talkButton: UIButton!
    // 叫聲、中英文
    @IBOutlet weak var languageSegment: UISegmentedControl!
    
    
    // 動物按鈕
    @IBOutlet weak var rabbitBtn: UIButton!
    @IBOutlet weak var chickBtn: UIButton!
    @IBOutlet weak var bearBtn: UIButton!
    @IBOutlet weak var elephantBtn: UIButton!
    @IBOutlet weak var cowBtn: UIButton!
    @IBOutlet weak var lionBtn: UIButton!
    @IBOutlet weak var tigerBtn: UIButton!
    @IBOutlet weak var monkeyBtn: UIButton!
    @IBOutlet weak var dogBtn: UIButton!
    @IBOutlet weak var catBtn: UIButton!
    @IBOutlet weak var pigBtn: UIButton!
    @IBOutlet weak var birdBtn: UIButton!
    
    // 音調速度
    @IBAction func changeSlider(_ sender: Any) {
        speakRateText.text = String(format: "%.2f", speakRate.value)
        speakMultiplierText.text = String(format: "%.2f", speakMultiplier.value)
    }
    
    // 告白按鈕
    @IBAction func SpeakButton(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: sayTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = speakRate.value
        utterance.pitchMultiplier = speakMultiplier.value
        synthesizer.speak(utterance)
    }
    
    // 動物名稱的觸發，是點選按鈕發聲所以不用做segment的func
    @IBAction func animalTalk(_ sender: UIButton) {
        var animalmessage = AVSpeechUtterance()
        //  用if做中文選項後做動物按鈕定義
        if languageSegment.selectedSegmentIndex == 0{
            
            if sender == catBtn{
                animalmessage = AVSpeechUtterance(string: "貓咪")
            }
            if sender == rabbitBtn{
                animalmessage = AVSpeechUtterance(string: "兔子")
            }
            if sender == dogBtn {
                animalmessage = AVSpeechUtterance(string: "狗狗")
            }
            if sender == chickBtn{
                animalmessage = AVSpeechUtterance(string: "小雞")
            }
            if sender == monkeyBtn{
                animalmessage = AVSpeechUtterance(string: "猴子")
            }
            if sender == lionBtn{
                animalmessage = AVSpeechUtterance(string: "獅子")
            }
            if sender == pigBtn{
                animalmessage = AVSpeechUtterance(string: "小豬")
            }
            if sender == bearBtn{
                animalmessage = AVSpeechUtterance(string: "小熊")
            }
            if sender == tigerBtn{
                animalmessage = AVSpeechUtterance(string: "老虎")
            }
            if sender == elephantBtn{
                animalmessage = AVSpeechUtterance(string: "大象")
            }
            if sender == cowBtn{
                animalmessage = AVSpeechUtterance(string: "牛")
            }
            if sender == birdBtn{
                animalmessage = AVSpeechUtterance(string: "小鳥")
            }
            // 語言設定一定要放發音後面
            animalmessage.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        }
        // 接著做英文發音
        else if{
                    
            if sender == catBtn{
                animalmessage = AVSpeechUtterance(string: "cat")
            }
            if sender == rabbitBtn{
                animalmessage = AVSpeechUtterance(string: "rabbit")
            }
            if sender == dogBtn {
                animalmessage = AVSpeechUtterance(string: "dog")
            }
            if sender == chickBtn{
                animalmessage = AVSpeechUtterance(string: "chick")
            }
            if sender == monkeyBtn{
                animalmessage = AVSpeechUtterance(string: "monkey")
            }
            if sender == lionBtn{
                animalmessage = AVSpeechUtterance(string: "lion")
            }
            if sender == pigBtn{
                animalmessage = AVSpeechUtterance(string: "pig")
            }
            if sender == bearBtn{
                animalmessage = AVSpeechUtterance(string: "bear")
            }
            if sender == tigerBtn{
                animalmessage = AVSpeechUtterance(string: "tiger")
            }
            if sender == elephantBtn{
                animalmessage = AVSpeechUtterance(string: "elephant")
            }
            if sender == cowBtn{
                animalmessage = AVSpeechUtterance(string: "cow")
            }
            if sender == birdBtn{
                animalmessage = AVSpeechUtterance(string: "bird")
            }
            animalmessage.voice = AVSpeechSynthesisVoice(language: "en-US")
        }
        // 叫聲
        else{
                    
            if sender == catBtn{
                animalmessage = AVSpeechUtterance(string: "meow meow meow")
            }
            if sender == rabbitBtn{
                animalmessage = AVSpeechUtterance(string: "mumble mumble mumble")
            }
            if sender == dogBtn {
                animalmessage = AVSpeechUtterance(string: "woof woof woof")
            }
            if sender == chickBtn{
                animalmessage = AVSpeechUtterance(string: "cluck cluck cluck")
            }
            if sender == monkeyBtn{
                animalmessage = AVSpeechUtterance(string: "gibber gibber gibber")
            }
            if sender == lionBtn{
                animalmessage = AVSpeechUtterance(string: "roar roar roar")
            }
            if sender == pigBtn{
                animalmessage = AVSpeechUtterance(string: "oink oink oink")
            }
            if sender == bearBtn{
                animalmessage = AVSpeechUtterance(string: "growl growl growl")
            }
            if sender == tigerBtn{
                animalmessage = AVSpeechUtterance(string: "howl howl howl")
            }
            if sender == elephantBtn{
                animalmessage = AVSpeechUtterance(string: "pawoo pawoo pawoo")
            }
            if sender == cowBtn{
                animalmessage = AVSpeechUtterance(string: "moo moo moo")
            }
            if sender == birdBtn{
                animalmessage = AVSpeechUtterance(string: "tweet tweet tweet")
            }
            animalmessage.voice = AVSpeechSynthesisVoice(language: "en-US")
        }

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(animalmessage)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

