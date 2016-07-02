//
//  FirstViewController.m
//  BridgeControl
//
//  Created by Hong on 16/7/2.
//  Copyright (c) 2016 Hong. All rights reserved.
//


#import "FirstViewController.h"
#import "Constants.h"

@interface FirstViewController ()

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *passwordLabel;
@property (nonatomic, weak) IBOutlet UILabel *roleLabel;
@property (nonatomic, weak) IBOutlet UILabel *soundLabel;
@property (nonatomic, weak) IBOutlet UILabel *lightLabel;
@property (nonatomic, weak) IBOutlet UILabel *ageLabel;
@property (nonatomic, weak) IBOutlet UILabel *heightLabel;
@property (nonatomic, weak) IBOutlet UILabel *genderLabel;

@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self refreshFields];
}

- (void)refreshFields
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSLog(@"%@", [defaults dictionaryRepresentation]);
    
    self.nameLabel.text = [defaults stringForKey:kNameKey];
    self.passwordLabel.text = [defaults stringForKey:kPasswordKey];
    self.roleLabel.text = [defaults stringForKey:kRoleKey];
    self.soundLabel.text = [defaults stringForKey:kSoundKey];
    self.lightLabel.text = [[defaults objectForKey:kLightKey] stringValue];
    self.ageLabel.text = [defaults stringForKey:kAgeKey];
    self.heightLabel.text = [defaults stringForKey:kHeightKey];
    self.genderLabel.text = [defaults stringForKey:kGenderKey];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end