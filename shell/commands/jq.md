# jq

    Command-line JSON processor - transform JSON in various ways, by selecting, iterating, reducing and otherwise mangling JSON documents
    jq supports the same set of datatypes as JSON - numbers, strings, booleans, arrays, objects (which in JSON-speak are hashes with only string keys), and “null”. Booleans, null, strings and numbers are written the same way as in javascript.
    jq can accept text input as well, but by default, jq reads a stream of JSON entities (including numbers and other literals) from stdin
    category - filters

|Operation|Description|
|--|--|
|filter|it takes an input, and produces an output|
|transformation|selecting, iterating, reducing, mangling|
|filter|slice/filter and map/transform|

## Synopsis

`jq [options] filter [file]`

## Options

The | operator in jq feeds the output of one filter (.[0] which gets the first element of the array in the response) into the input of another ({...} which builds an object out of those fields).

--null-input/-n:

    Don’t read any input at all! Instead, the filter is run once using null as the input. This is useful when using jq as a simple calculator or to construct JSON data from scratch.

--compact-output / -c:

    By default, jq pretty-prints JSON output. Using this option will result in more compact output by instead putting each JSON object on a single line.

--tab:

    Use a tab for each indentation level instead of two spaces.

--indent n:

    Use the given number of spaces (no more than 8) for indentation.

--sort-keys / -S:

    Output the fields of each object with the keys in sorted order.

-f filename / --from-file filename:

    Read filter from the file rather than from a command line, like awk’s -f option. You can also use ‘#’ to make comments.

## Filters

Identity: .

    The absolute simplest filter is '.' . This is a filter that takes its input and produces it unchanged as output. That is, this is the identity operator.
    Useful way of formatting JSON output from, say, curl.

Object Identifier-Index: .foo, .foo.bar

    The simplest useful filter is .foo. When given a JSON object (aka dictionary or hash) as input, it produces the value at the key “foo”, or null if there’s none present.
    A filter of the form .foo.bar is equivalent to .foo|.bar.
    If the key contains special characters, you need to surround it with double quotes like this: ."foo$", or else .["foo$"].
    For example .["foo::bar"] and .["foo.bar"] work while .foo::bar does not, and .foo.bar means .["foo"].["bar"].

Array Index: .[2]

    When the index value is an integer, .[<value>] can index arrays. Arrays are zero-based, so .[2] returns the third element.
    Negative indices are allowed, with -1 referring to the last element, -2 referring to the next to last element, and so on.

Array/String Slice: .[10:15]

    The .[10:15] syntax can be used to return a subarray of an array or substring of a string. The array returned by .[10:15] will be of length 5, containing the elements from index 10 (inclusive) to index 15 (exclusive). Either index may be negative (in which case it counts backwards from the end of the array), or omitted (in which case it refers to the start or end of the array).
    [a:b] - a to b
    [:b] - starting to b
    [-a:] - last a

Array/Object Value Iterator: .[]

    If you use the .[index] syntax, but omit the index entirely, it will return all of the elements of an array. Running .[] with the input [1,2,3] will produce the numbers as three separate results, rather than as a single array.
    You can also use this on an object, and it will return all the values of the object.

Comma: ,

    If two filters are separated by a comma, then the same input will be fed into both and the two filters’ output value streams will be concatenated in order: first, all of the outputs produced by the left expression, and then all of the outputs produced by the right. For instance, filter .foo, .bar, produces both the “foo” fields and “bar” fields as separate outputs.

Pipe: |

    The | operator combines two filters by feeding the output(s) of the one on the left into the input of the one on the right. It’s pretty much the same as the Unix shell’s pipe, if you’re used to that.
    If the one on the left produces multiple results, the one on the right will be run for each of those results. So, the expression .[] | .foo retrieves the “foo” field of each element of the input array.
    Note that .a.b.c is the same as .a | .b | .c.

## Examples

* Download test data - available in countries.json

> wget https://raw.githubusercontent.com/datasets/geo-countries/master/data/countries.geojson

* Download test data - available in commits.json

> wget https://api.github.com/repos/stedolan/jq/commits?per_page=5

* Pretty print

> jq . partner.json

* Print object

> jq .userType partner.json

* First element of an array

> jq '.features[0]' countries.geojson

* Multiple from array - find 1,3,7 country

> jq '.features[1,3,7]' countries.geojson

* Last of many

> jq '.features[-1]' countries.geojson

* Array slice

> jq '.features[1:5]' countries.geojson

* Array all - all of many - print all country names

> jq '.features[].properties.ADMIN' countries.geojson

* Counting number of elements

> jq '.features|length' countries.geojson

* Extract multiple fields - results of fields are printed sequentially

> jq '.features[1].properties.ADMIN,.features[1].properties.formal_en' countries.geojson

* Filtering selected fields - can also change names

> jq '{sha:.[].sha,author:.[].commit.author}' commits.json
> jq '.[] | {message: .commit.message, name: .commit.committer.name}' commits.json

* Collect elements in an array - wrap query into []

> jq '[.[] | {sha:.sha,author:.commit.author}]' commits.json 

* Filter on countries

> jq '.[] | {sha:.sha,author:.commit.author}

jq '{sha:.[].sha,author:.[].commit.author}' commits.json 
> jq '.[] | {message: .commit.message, name: .commit.committer.name} | select( .name=="William Langford")' commits.json


* Get properties keys

> jq '.features[0:1][0].properties |keys' countries.geojson

* Get min/max/unique value (if numeric)

> jq '[.features[].properties.pop_est] | min' countries.geojson  
> jq '[.features[].properties.pop_est] | max' countries.geojson  
> jq '[.features[].properties.economy] | unique' countries.geojson  
> jq '[.features[].properties.economy] | unique[]' countries.geojson  

* Sort

> jq '[.features[].properties.pop_est] | sort' countries.geojson  
> jq '[.features[].properties.pop_est] | sort[]' countries.geojson | head

## Notes

* To pipe output of one command to another use list not objects

> jq '[.features[].properties.pop_est] | sort[]' countries.geojson | head

* Parse json from database

> curl -s -XGET 'ip:9200/ep_events/events/_search?size=5000&pretty=1' -d '{ 
    "query" : { 
        "match_all" : {} 
    },
    "fields": ["userid"]
}
' | jq '.hits.hits[].fields.userid[0]'