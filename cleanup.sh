#!/bin/bash

for i in *.bib; do
	sed 's/\\i{}/i/g' $i > /tmp/$i.$$ && mv /tmp/$i.$$ $i
	sed 's/{\\i}/i/g' $i > /tmp/$i.$$ && mv /tmp/$i.$$ $i
done
