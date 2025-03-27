FROM ubuntu:16.04

MAINTAINER: Janelle

 

# Install any dependencies you need

RUN apt update && apt -y upgrade

 

# Use the official NCBI BLAST+ image as base

# FROM ncbi/blast:latest

 

# Set the working directory inside the container

WORKDIR /tools

 

# Install dependencies and SAMtools

RUN apt-get update && apt-get install -y samtools && apt-get clean


RUN apt-get install -y  subread && apt-get clean

 
RUN apt-get install -y  hisat2 && apt-get clean

 
RUN  apt-get install -y fastqc && apt-get clean
 

RUN apt-get install -y cutadapt && apt-get clean

 
