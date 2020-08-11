# !bin/bash/   
# First like will create the folders/subfolders required to send the requested files to. 

mkdir AllRecords AllRecords/VIPCustomerOrders

#Next command will find and move all files to the requested folder AllRecords - adding in 2>/dev/null will suppress any errors of duplicate copies for a clean print. (tested w.o before hand to confirm all files were moved.)

find -not -iname '*.sh' -exec cp {} AllRecords \; 2>/dev/null

# Next we will sort out the files for Michael Davis/Campbell showing the line/file names in the output. 


find AllRecords/ -type f -exec grep -r -R 'Michael[[:punct:]]Campbell' {} \; && find AllRecords/ -type f -exec grep -r -R 'Michael[[:punct:]]Davis' {} \;

# This skips the order of directions - but claims the count before the move and places them into the requested file.

# echos/column added to format the results. Column will only show when file is viewed as "column AllRecords/VIPCustomerOrders/VIPCustomerDetails.md"
echo Michael Campbell: >> AllRecords/VIPCustomerOrders/VIPCustomerDetails.md

find AllRecords/ -type f -exec grep -r -R 'Michael[[:punct:]]Campbell' {} \; | wc -l >> AllRecords/VIPCustomerOrders/VIPCustomerDetails.md

echo Michael Davis: >> AllRecords/VIPCustomerOrders/VIPCustomerDetails.md

find AllRecords/ -type f -exec grep -r -R 'Michael[[:punct:]]Davis' {} \; | wc -l >> AllRecords/VIPCustomerOrders/VIPCustomerDetails.md

column AllRecords/VIPCustomerOrders/VIPCustomerDetails.md

# We will now create two files to show the listings of the above information and move them to the VIPCustomerOrders directory

find AllRecords/ -type f -exec grep -r -R 'Michael[[:punct:]]Campbell' {} \; >> AllRecords/VIPCustomerOrders/michael_campbell_orders.output 2>/dev/null && find AllRecords/ -type f -exec grep -r -R 'Michael[[:punct:]]Davis' {} \; >> AllRecords/VIPCustomerOrders/michael_davis_orders.output 2>/dev/null ;