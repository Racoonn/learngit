<?php
require("../../controllers/user_control.php");
if(checkName()) echo "true";
else echo "false";