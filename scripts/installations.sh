#!/bin/bash
sudo yum update -y

# copying local machine pub key to authorized key of target machines
echo ----- copy local pub key to host machine -----
cat << EOF >> /home/ec2-user/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDlu8CT5PRe/0chlQMRWRmLT1DiqW3x+c5++FCfN1EROMUotr9vPmxhH3cF4TRylGaGRKFb129eBHHWN89UKUusq+sF5pqMZOmDEc0/PqK42J2VHGOxtBW0ddgaz8h8mJiwNEwnzXmOJxw4Z3i4LRgx7NO40v7LRPGVrMSZzsc3gvGuv2nPbfyZ+CnJLZyha3M+ZKWiZmLXnD95akrZU2aO7ln3bq/Fg6jeCBj1FA3TC0nNESvzfOZFR/VPYt3tpwN0xfer98wtHvydgm9HBffurzL1tAL7XZOaTGpXEOYp6EAfWRHB54UHlNJj3tLE/IV90Pg2ceHi2bQrZmkETK0/FTux4PzVh7S55kJupTmw06iJgZzX3ANbnpSNW1Ljv/eQN6fiCVRGXSv/t+j6ducICrg1r0TqEN2nbn18yTg/UCZl3XDFTRVyq6MYSbHla15ivfeZfmULW1DHRqtu8NawhRakmc9h6u2DzjaQ2lpzqh2aDLTBjzHvmILlLeUtigE= aiyemonase@Adesojis-MacBook-Pro.local
EOF

## Installing GIT
echo ----- Installing git -----
sudo yum install git -y

## Installing Monitoring Resources
echo ----- cloning blackbox monitoring repo -----
git clone https://github.com/adesoji-blick/blackbox-monitoring.git /home/ec2-user/blackbox-monitoring

echo ----- installing monitoring resources -----
sh /home/ec2-user/blackbox-monitoring/monitoringTool-install.sh

