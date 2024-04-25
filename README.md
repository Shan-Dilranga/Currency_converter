# Currency Converter 
### This repository is about currency converter that was built usning Jaclang

### The code starts by importing necessary modules:
**urllib.request**: This module provides functions for working with URLs and making HTTP requests.<br/>
**json**: This module is used for working with JSON data.

**with entry{}** is acts likes a main function
It takes and validates the input (ensuring the amount is numeric and greater than 0).<br/>
Finally, it calls the convert_currency function with the provided input and prints the result.

### The convert_currency function takes three parameters:
**init_currency**: The initial currency code (e.g., “USD” for US Dollar).<br/>
**target_currency**: The target currency code (e.g., “EUR” for Euro).<br/>
**amount**: The amount to be converted.

### Inside the function:
An API key (you need to replace it with your own) is defined.<br/>
A URL is constructed using the provided parameters.<br/>
An HTTP request is made to the API using urllib.request.urlopen.<br/>
The response is read and decoded as JSON.<br/>
If the response contains a “result” field, it returns the conversion result; otherwise, it returns an error message.<br/>
