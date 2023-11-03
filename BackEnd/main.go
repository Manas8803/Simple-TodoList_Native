package main

import (
	"github.com/Manas8803/BackEnd/Simple-TodoList_Native/storage/scripts"
	"github.com/gin-gonic/gin"
)

func main() {
	//* Setup router
	router := gin.Default()

	//* Connect DB
	scripts.ConnectDB()

	//* Run Server
	router.Run("localhost:9000")
}
