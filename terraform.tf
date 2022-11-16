resource "local_file" "myfile-1"{
	filename	= "/root/newfile.txt"
	content		= "The content is changed on second time "
}
