#!/bin/bash

# Compartment id
C='<< COMPARTMENT ID HERE >>'

# Volume id
B='<< VOLUME ID HERE >>'

# Subnet id
S='<< SUBNET ID HERE >>'

# OCI instance launch
oci compute instance launch \
  --display-name oracle-1 \
  --shape 'VM.Standard.A1.Flex' \
  --availability-domain 'qauI:US-ASHBURN-AD-1' \
  --compartment-id $C \
  --source-boot-volume-id $B \
  --subnet-id $S \
  --instance-options "file://$PWD/instanceOptions.json" \
  --availability-config "file://$PWD/availabilityConfig.json" \
  --shape-config "file://$PWD/shapeConfig.json" \
  --agent-config "file://$PWD/agentConfig.json" \
  --metadata "file://$PWD/metadata.json" \
  --wait-for-state 'RUNNING'