function keyboard_islastkey_numletter() {
	return (keyboard_lastkey >= 65 && keyboard_lastkey <= 90) || (keyboard_lastkey >= 48 && keyboard_lastkey <= 57) || (keyboard_lastkey == 32) || (keyboard_lastchar == "?") || (keyboard_lastchar == ",") || (keyboard_lastchar == ".") || (keyboard_lastchar == "!")


}
