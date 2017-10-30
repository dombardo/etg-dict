#!/bin/bash
cd /home/ec2-user/dict/
git pull
cd /home/ec2-user/dict/hugo
/home/ec2-user/go/bin/hugo
