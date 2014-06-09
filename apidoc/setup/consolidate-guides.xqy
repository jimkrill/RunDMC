xquery version "1.0-ml";

(: This script is run in the raw database, setting up the URLs for the XML
 : files for each guide, and adding a chapter list to the title doc.
 :)

import module namespace api="http://marklogic.com/rundmc/api"
  at "/apidoc/model/data-access.xqy" ;
import module namespace guide="http://marklogic.com/rundmc/api/guide"
  at "guide.xqm" ;

guide:consolidate($api:version),
text { "Consolidated guides in", xdmp:elapsed-time() }

(: apidoc/setup/consolidate-guides.xqy :)