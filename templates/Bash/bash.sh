#!/bin/bash


function example_function() {
  msg="Example function"
	echo "$msg"
	echo $1
}


example_function "Test message"
