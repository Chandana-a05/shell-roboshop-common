#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-roboshop1"
LOGS_FILE="$LOGS_FOLDER/$0.log"
R="\e[31m"
G="\e[32m"
y="\e[33m"
B="\e[34m"
N="\e[0m" #Normal
START_TIME=$(date +%s)

echo -e "$(date "+%Y %M %D %H: %M: %S") script started and executed at : $(date)" | tee -a $LOGS_FILE

 mkdir -p $LOGS_FOLDER

 check_root(){
        if [ $USERID -ne 0 ]; then
            echo -e "$R please run this script with root user access $N" | tee -a $LOGS_FILE
            exit 1
        fi  
    }


 VALIDATE(){
            if [ $1 -ne 0 ]; then
                echo -e "$(date "+%Y %M %D %H: %M: %S") | $2 ... $R FAILURE $N" | tee -a $LOGS_FILE
                exit1
            else
                echo -e "$(date "+%Y %M %D %H: %M: %S") | $2 ... $G SUCCESS $N" | tee -a $LOGS_FILE
            fi
        }

print_total_time(){
    END_TIME=$(data, +%s)
    TOTAL_TIME=$(($END_TIME - $START_TIME))
    echo -e "$(date "+%Y %M %D %H: %M: %S") | script executed in : $G TOTAL_TIME seconds $N" 



} 