# viper_simplecov

Viper package for simplecov Ruby support.

## Version 0.1.0

## Abstract

Adds support for the SimpleCov Ruby gem to the Viper Programmer's Editor. [Viper GitHub page](https://github.com/edhowland/viper)

This package only adds commands and parsing for simplecov-json files. It does not actually run the simplecov program on
your source files. You must do that separately. Once you generate a coverage report in JSON format, you can
load it into the Viper editor and browse the report.

## Adding this package to Viper runtime

Install this package like any other Viper package. Typically, you would git clone 
this repository into your ~/.viper/packages folder.

### Adding this to your project's .viperrc file

To include viper_simplecov package and load the coverage.json for your source tree, you might do the following:

Create a file '.viperrc' in your project's source root folder. If one already exists,
then add these lines to it:

```
# Include viper_simplecov package and load the coverage report
package viper_simplecov
load_cov coverage/coverage.json
```

The above 'load_cov' command assumes that simplecov tool created the coverage.json in the ./coverage folder
under the project root.

### Running the cov_report in Viper

In your project source root folder, launch viper. Once this is running, invoke the cov_report command
via Alt+; . This will load a new scratch buffer with the parsed results of the
coverage.json report. Investigate the report statistics and examine each file it reported on.

Once you have found a file you want to investigate further, load it into the buffer and run the 'cov' command.

### Running the cov command

Open a file to investigate with the 'o filename' command. Once loaded, invoke the 'cov' command.

Another new scratch buffer will be loaded with the coverage report for that file. If the total coverage is less than 100.0%,
you can search for the line that contains 'hits: 0'. Return to the original file with the Control T.
Use the command 'g lineno' to goto the line number of the offending file. Do what you need to do 
to increase the coverage for that line and further line numbers.

Continue this iteration until you get to a total of 100.0% coverage. 

Good Luck!


## Running specs

In order to run the specs for this Viper package, you must require the viper library.
To do this, you should first generate a file called 'spec/viper_bin_path.rb'.
This filewill include the viper bin path so viper_simplecov/spec_helper.rb  can locate the viper/lib directory.

### Generating the viper_bin_path.rb

Follow these steps to prepare specs to run:

```
cd ./spec
viper --bin-path-rb >./viper_bin_path.rb
```

Now you can run rake in this folder and all library paths will be resolved.

Note: You do not need to do this merely to add the viper_simplecov package to your Viper runtime. Only do this
when working the code of viper_simplecov itself.
