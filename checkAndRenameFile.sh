#Tests for existence of fileName1, if it exists renames it to fileName2, else do nothing
#Params: fileName1, fileName2

echo "Enter 1st file:"
read file1
echo "Enter 2nd file:"
read file2
echo "Test $file1, if present rename it to $file2."
echo "If not found, continue with $file2"

if [ -f "$file1" ]
then
echo "FOUND : $file1"
echo "FOUND : RENAMING $file1 to $file2"
mv $file1 $file2
else
echo "NOT FOUND: $file1 not found."
echo "NOT FOUND: Not doing anything."
fi

