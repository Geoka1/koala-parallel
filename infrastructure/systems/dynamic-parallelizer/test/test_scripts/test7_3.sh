# Tests simple directory creation 
# using mkdir of 
# simple directories

"$MISC_SCRIPT_DIR/sleep_and_mkdir.sh" 0.0 "$test_output_dir/1"
"$MISC_SCRIPT_DIR/sleep_and_mkdir.sh" 0.05 "$test_output_dir/2"
"$MISC_SCRIPT_DIR/sleep_and_mkdir.sh" 0.1 "$test_output_dir/1/3"
"$MISC_SCRIPT_DIR/sleep_and_mkdir.sh" 0.15 "$test_output_dir/1/3/4"
"$MISC_SCRIPT_DIR/sleep_and_mkdir.sh" 0.2 "$test_output_dir/1/3/4/5"
"$MISC_SCRIPT_DIR/sleep_and_mkdir.sh" 0.25 "$test_output_dir/1/3/3"
"$MISC_SCRIPT_DIR/sleep_and_echo.sh" 0.3 "hello1" "$test_output_dir/1/1.txt"
"$MISC_SCRIPT_DIR/sleep_and_echo.sh" 0.35 "hello2" "$test_output_dir/2/2.txt"
"$MISC_SCRIPT_DIR/sleep_and_echo.sh" 0.4 "hello3" "$test_output_dir/2/3.txt"
"$MISC_SCRIPT_DIR/sleep_and_echo.sh" 0.45 "hello4" "$test_output_dir/1/3/4/4.txt"
"$MISC_SCRIPT_DIR/sleep_and_echo.sh" 0.5 "hello5" "$test_output_dir/1/3/4/5/5.txt"
"$MISC_SCRIPT_DIR/sleep_and_echo.sh" 0.55 "hello6" "$test_output_dir/1/3/3/6.txt"
