#!/bin/bash

set -e
path=$1

sed -i "s/std::string_view/const rstl::string\&/g" "$path"
sed -i "s/zeus::CTransform/CTransform4f/g" "$path"
sed -i "s/zeus::skPurple/CColor::Purple()/g" "$path"
sed -i "s/zeus::skWhite/CColor::White()/g" "$path"
sed -i "s/zeus:://g" "$path"
sed -i "s/visitor.Visit(this)/visitor.Visit(*this)/g" "$path"
