package main

import (
	"github.com/volatiletech/sqlboiler-sqlite3/driver"
	"github.com/volatiletech/sqlboiler/drivers"
)

func main() {
	drivers.DriverMain(&driver.SQLiteDriver{})
}
