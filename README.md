# cfdi-anonymizer
 A script to anonymize XML data

## How it works
This script takes as input invoice data in XML format and removes sensitive data.
All fields in the XML document follow the pattern `filed="SOMETHING SENSITIVE"`. Then, this
repo keeps a file named `sensitive_field_filter.txt` with a map of fields and values.

The `anonymizer.sh` script takes the XML input and checks the `sensitive_field_filter.txt` file
and transforms `field="SOMETHING SENSITIVE"` with `field="DUMMY VAL"`.
Both `field` and `"DUMMY VAL"` are included in `sensitive_field_filter.txt`.

The script finishes by outputing the _anonymized_ data into standar output.
