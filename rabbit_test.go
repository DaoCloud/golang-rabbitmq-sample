package main

import (
	"testing"
)

func TestRabbit(t *testing.T) {
	var msg = "hello"
	send(msg)

	res := receive()
	if res != msg {
		t.Errorf("expect %s, go %s\n", msg, res)
	}
}
