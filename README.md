# ASN-AutomatedSlopeNavigation

as part of cadence and IDF hackathon we built an automated POC system that handle balancing a robot when dealing with slopes and stairs and carrying weights on the robot arm.

## Tools 
1) ESP32 for distance measuring of the robot and the stair height. 
2) android app that is being attach to the robot and measure the angle when dealing with a slope or a stair
3) image proccesing using TensorFlow-light for stairs detection. 

## Communication
at the moment the components communicate using a simple CRUD requests but the communication module can be changed at any time
