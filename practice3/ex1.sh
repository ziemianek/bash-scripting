#!/bin/bash

file_count() {
	local DIR=$(pwd)
	ls $DIR/ | wc -l
}

file_count
