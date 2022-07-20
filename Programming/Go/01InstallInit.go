/* Installing Go
1. go to https://go.dev/doc/install
2. download installer according to your operating system
3. double click the installer and follow the procedure to install
4. open terminal/command prompt and input "go version" to check the installation
5. create a directory for your package/project
6. to enable package dependecy tracking input "go mod init [your/module/path]"
7. create text such as hello.go with the following code 
*/

package main

import "fmt" //package for formatting text included in the standard library

func main() {
	fmt.Println("Hello World!")
}

/*
8. input "go run ." in cmd to compile and run program
9. to get help input "go help"
10. let's use external package, rewrite the program above (go to pkg.go.dev to search for package)
*/

package main

import (
	"fmt"
	"rsc.io/quote" // external package contains some functions including Go().
)

func main() {
	fmt.Println(quote.Go())
}

/*
11. input "go mod tidy" in cmd to add new module 
12 recomple and rerun using "go run ."
*/

