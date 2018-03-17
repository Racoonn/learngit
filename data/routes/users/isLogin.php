<?php
header("Content-Type:application/json");
require("../../controllers/user_control.php");
echo json_encode(isLogin());