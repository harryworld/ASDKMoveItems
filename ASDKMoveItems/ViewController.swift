//
//  ViewController.swift
//  ASDKMoveItems
//
//  Created by Leo Tumwattana on 4/1/2017.
//  Copyright © 2017 Stay Sorted Inc. All rights reserved.
//

import UIKit
import AsyncDisplayKit

enum Datastore {
    
    static var titles: [String] = [
        "Item Number 1\nlala",
        "Item Number 2\nlolo\nlolo",
        "Item Number 3\nLOLO\nLOLO\nLOLO",
        "Item Number 4\nHAHA\nHAHA\nHAHA\nHAHA\nHAHA\nHAHA\nHAHA\nHAHA",
        "Item Number 5",
        "Item Number 6",
        "Item Number 7",
        "Item Number 8",
        "Item Number 9",
        "Item Number 10",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling 0",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",
        "Buy Groceries:\n\u{E836} Eggs\n\u{E836} Cheese\n\u{E836} Ham\n\u{E836} Chips",
        "Onboarding:\n\u{E836} Control Gestures ORGesture\n\u{E836} Bring in TDTouchDot code\n\u{E836} Start building new Onboarding",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system",
        "Improve labelling system\n\u{E836} Similar to Slack?",
        "Check Mikele's after create reminder freeze bug\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?\n\u{E836} Double check version he is on\n\u{E836} Update iPhone 7 Plus to iOS10.1.1\n\u{E836} Test on my iPhone 7 Plus\n\u{E836} See if new update fixes issue for him?",
        "Share Extension: Remind Me Shortcuts\n\u{E836} One hour later\n\u{E836} Tomorrow\n\u{E836} Specific Date / Time",
        "Schedule / List mode shortcuts\n\u{E836} Add list and date picker + show in\n\u{E836} Advanced setting to only show in\n\u{E836} Add Label button?",
        "URL Scheme Actions\n\u{E836} Search \n\u{E836} /search?term=...",
        "Dispatch Timer\nhttps://gist.github.com/maicki/7622108",
        "Prepare for v1.4 release\n\u{E836} Update website - FAQ + Docs\n\u{E836} App Store Assets\n\u{E836} App Store Desc + What's New\n\u{E836} Finalize Translations\n\u{E836} Contact Kai",
        "Test against old non-nil values for Object properties such as:\n\u{E836} ORReminder.date = NSDate(since1970: 0)\n\u{E836} ORReminder.title = ''\n\u{E836} ORReminder.rrule in bad format\n\u{E836} ORReminder.rruleDate = NSDate(since1970: 0)",
        "Attachments Feature\n\u{E836} Photo\n\u{E836} Files",
        "Smooth Scrolling\n\u{E836} Share TextStorage - Label & TextView\n\u{E836} Draw time image using CG?\n\u{E836} Cache Attributes?\n\u{E836} Use Glyph Replacement?",
        "Sound FX for:\n\u{E836} Adding / removing labels\n\u{E836} Closing Lists and List",

        ]
    
}

class ViewController: ASViewController<ASDisplayNode> {
    
    let tap = UITapGestureRecognizer()
    
    lazy var collectionNode: ASCollectionNode = {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        
        let node = ASCollectionNode(collectionViewLayout: layout)
        node.dataSource = self
        node.delegate = self
        node.backgroundColor = .black
        return node
        
    }()
    
    init() {
        super.init(node: ASDisplayNode())
        node.backgroundColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubnode(collectionNode)
        
        tap.addTarget(self, action: #selector(tapped(_:)))
        collectionNode.view.addGestureRecognizer(tap)
        
        collectionNode.view.alwaysBounceVertical = true
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        collectionNode.frame = view.bounds
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func tapped(_ tap: UITapGestureRecognizer) {
        
        // Update data source
        
        // *** Follows the Rules of Batching *** //
        Datastore.titles.remove(at: 4)
        let item2 = Datastore.titles.remove(at: 2)
        let item = Datastore.titles.remove(at: 1)
        Datastore.titles.insert("A\nA\nA\nA\nA\nA", at: 0)
        
        Datastore.titles.append(item)
        Datastore.titles.append(item2)
        // *** Follows the Rules of Batching *** //
      
        // Update colletionNode
        let at = IndexPath(row: 1, section: 0)
        let to = IndexPath(row: Datastore.titles.count - 2, section: 0)
        
        let at2 = IndexPath(row: 2, section: 0)
        let to2 = IndexPath(row: Datastore.titles.count - 1, section: 0)
      
        var transform = CATransform3DIdentity
        transform.m34 = -1.0 / 500.0
        collectionNode.view.layer.sublayerTransform = transform
      
        if let node = collectionNode.nodeForItem(at: at2) {
          print(node)
        }
      
        collectionNode.performBatch(
            animated: true,
            updates: { [weak self] in
                self?.collectionNode.deleteItems(at: [IndexPath(row: 4, section: 0)])
                self?.collectionNode.insertItems(at: [IndexPath(row: 0, section: 0)])
                self?.collectionNode.moveItem(at: at, to: to)
                self?.collectionNode.moveItem(at: at2, to: to2)
          }, completion: { [weak self] finished in
            if let node = self?.collectionNode.nodeForItem(at: to2) {
              print(node)
            }
        })
        
    }
    
}

extension ViewController: ASCollectionDataSource {
    
    func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return Datastore.titles.count
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        
        let title = Datastore.titles[indexPath.row]
        
        return {
            let node = ItemCellNode()
            node.configure(title: title)
            return node
        }
        
    }
    
}

extension ViewController: ASCollectionViewDelegateFlowLayout {
    
    func collectionNode(_ collectionNode: ASCollectionNode, constrainedSizeForItemAt indexPath: IndexPath) -> ASSizeRange {
        
        let width = collectionNode.bounds.width
        
        let min = CGSize(width: width, height: 50)
        let max = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        
        return ASSizeRange(min: min, max: max)
        
    }
    
}

