resource "local_file" "myfile-2"{
	filename	= "/root/newfile.txt"
	content		= "The content is changed on Third time "
}
