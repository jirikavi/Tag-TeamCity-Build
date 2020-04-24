#!/bin/sh
postData="<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?><tags count=\"1\"><tag name=\"$4\"/></tags>"
curl -v --basic --request POST --header "Content-Type: application/xml" --data "$postData" "http://buildmanager:$2@$1/app/rest/builds/id:$3/tags/"
