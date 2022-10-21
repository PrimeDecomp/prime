#!/bin/bash

set -e
path=$1

sed -i "s/std::string_view/const rstl::string\&/g" "$path"
sed -i "s/std::optional/rstl::optional_object/g" "$path"
sed -i "s/zeus::CTransform/CTransform4f/g" "$path"
sed -i "s/zeus::skZero2f/CVector2f(0.f, 0.f)/g" "$path"
sed -i "s/zeus::skZero3f/CVector3f::Zero()/g" "$path"
sed -i "s/zeus::skPurple/CColor::Purple()/g" "$path"
sed -i "s/zeus::skWhite/CColor::White()/g" "$path"
sed -i "s/zeus::CFrustum/CFrustumPlanes/g" "$path"
sed -i "s/zeus:://g" "$path"
sed -i "s/DEFINE_ENTITY//g" "$path"
sed -i "s/visitor.Visit(this)/visitor.Visit(*this)/g" "$path"
