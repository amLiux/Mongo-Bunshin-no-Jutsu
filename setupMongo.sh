#!/bin/bash

sleep 10 | echo sleeping

mongo mongo-rs-1:27017 --authenticationDatabase admin -u root -p example --eval 'rs.initiate({_id:"my-first-rs",members:[{_id:0,host:"mongo-rs-1:27017"},{_id:1,host:"mongo-rs-2:27017"},{_id:2,host:"mongo-rs-3:27017"}]})'

# sleep 10 | echo 'sleep for user'

# mongo mongo-rs-1:27017 --authenticationDatabase admin -u root -p example --eval 'db = db.getSiblingDB("auth-control")
# db.createUser({user:"transmit",pwd:"transmitPwd",roles:[{role:"dbOwner",db:"auth-control"}]})'
