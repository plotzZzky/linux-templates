#!/bin/bash


# - - - - - Code - - - - - 

function example_function() {
  local msg="Sua mensagem:"
  local your_msg=""
  
  read -p "Your message: " your_msg
  
	echo -e "\n$msg"
	echo -e "\n$your_msg\n"
}


# - - - - - Run - - - - - 

example_function
