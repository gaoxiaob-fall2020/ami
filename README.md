# ami

> ami is a *Packer* template to build custom AMIs(Amazon Machine Image) for *[webapp](https://github.com/gaoxiaob-fall2020/webapp.git)*. EC2 Instances that are created from the AMIs will have Python 3.6.9 and Pip 9.0.1 installed, which are needed to run the application. 

## Build an AMI in Local Development

**> *Install Packer and create an AWS account***
* [Packer installations](https://learn.hashicorp.com/tutorials/packer/getting-started-install?in=packer/getting-started)

* [AWS account creation](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc)

**> *Set environment variables(on Linux/Unix, on Windows use the <code>set</code> command instead)***
  
    # AWS access credentials. IAM users must have EC2 write permissions
    export AWS_ACCESS_KEY=x      
    export AWS_SECRET_KEY=x
    
    export AWS_REGION=x          # AWS region
    export SOURCE_AMI=x          # source AMI upon which our custom one will be built. Match it with the AWS region in that AMIs are region specific
    export AWS_SUBNET_ID=x       # available subnet under the AWS region, where an EC2 instance will be created while building the AMI
    export SSH_USERNAME=x        # SSH username of the EC2 instance
    

**> *Build an AMI***

    cd <repo-root>
    packer build ./ami.json


    demo #7
