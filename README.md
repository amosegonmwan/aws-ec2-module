# Terraform EC2 Module Deployment

This repository contains Terraform configurations to deploy EC2 instances in both the US West and US East regions using a reusable module.

## Project Structure

.
├── main.tf
├── provider.tf
├── variable.tf
└── ec2-module
    ├── data.tf
    ├── ec2.tf
    └── provider.tf
    └── variables.tf


## Overview

- **main.tf**: The main Terraform file that instantiates two EC2 instances in different regions using a common module.
  
- **provider.tf**: Configuration for the AWS provider, specifying required providers and regional settings.
  
- **variable.tf**: Defines variables used across the configuration for instance type, tag names, and region.
  
- **ec2-module/**: A module directory containing the files needed to deploy EC2 instances:
  
  - **data.tf**: Fetches the latest Ubuntu AMI.
    
  - **ec2.tf**: Contains the resource definition for the EC2 instance.
    
  - **provider.tf**: Defines the provider settings for the module.
    
  - **variables.tf**: Defines the variables used within the module.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) (version 1.0 or higher)
- AWS account with appropriate permissions

## Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
