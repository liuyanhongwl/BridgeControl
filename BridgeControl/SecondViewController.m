//
//  SecondViewController.m
//  BridgeControl
//
//  Created by Hong on 16/7/2.
//  Copyright (c) 2016 Hong. All rights reserved.
//


#import "SecondViewController.h"
#import "Constants.h"

@interface SecondViewController ()

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UITextField *passwordTextField;
@property (nonatomic, weak) IBOutlet UITextField *roleTextField;
@property (nonatomic, weak) IBOutlet UISwitch *soundSwitch;
@property (nonatomic, weak) IBOutlet UISlider *lightSlider;
@property (nonatomic, weak) IBOutlet UITextField *ageTextField;
@property (nonatomic, weak) IBOutlet UITextField *heightTextField;
@property (nonatomic, weak) IBOutlet UITextField *genderTextField;
@property (nonatomic, weak) IBOutlet UIPickerView *pickerView;

@end

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self refeshFields];
}

- (void)refeshFields
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    self.nameTextField.text = [defaults stringForKey:kNameKey];
    self.passwordTextField.text = [defaults stringForKey:kPasswordKey];
    self.roleTextField.text = [defaults stringForKey:kRoleKey];
    self.soundSwitch.on = [defaults boolForKey:kSoundKey];
    self.lightSlider.value = [[defaults objectForKey:kLightKey] floatValue];
    self.ageTextField.text = [defaults stringForKey:kAgeKey];
    self.heightTextField.text = [defaults stringForKey:kHeightKey];
    self.genderTextField.text = [defaults stringForKey:kGenderKey];
}

- (IBAction)settingButtonAction:(UIButton *)button
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
}

- (IBAction)saveButtonAction:(UIButton *)button
{
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end