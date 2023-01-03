#!/bin/bash

func() {
    typeset x #define x to be local var
    x=7
    y=8
}
x=1
y=2
echo "x = $x"
echo "y = $y"
func
echo "function called!"
echo "x = $x"
echo "y = $y"
