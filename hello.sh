#!/usr/bin/env ruby -wU

echo "$( dirname "${BASH_SOURCE[0]}" )"
echo $( dirname "${BASH_SOURCE[0]}" )
# cd "$( dirname "${BASH_SOURCE[0]}" )"

project_path=$(cd $(dirname $0); pwd)

echo $project_path

cd $project_path