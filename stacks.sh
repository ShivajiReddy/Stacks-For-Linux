cd ~/Desktop

echo "Keep the desktop files intact? 1/0"
read input

mkdir Stacks

cd Stacks

mkdir PDFs
mkdir Presentatios
mkdir Word_Docs
mkdir codes
mkdir Photos
cd ..

if [[ $input -eq 1 ]]
then
	cp *.pdf Stacks/PDFs
	cp *.ppt Stacks/Presentatios
	cp *.docx Stacks/Word_Docs 
	cp *.jpeg Stacks/Photos
	cp *.c Stacks/codes
	cp *.cpp Stacks/codes

elif [[ $input -eq 0 ]]
then
	mv *.pdf Stacks/PDFs
	mv *.ppt Stacks/Presentatios
	mv *.docx Stacks/Word_Docs 
	mv *.jepg Stacks/Photos
	mv *.c Stacks/codes
	mv *.cpp Stacks/codes

else
	echo "Invalid input, try again"
fi
