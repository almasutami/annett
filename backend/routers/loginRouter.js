const express = require("express");
const { userController } = require("../controller");
const router = express.Router();

router.post("/", userController.loginUser);

module.exports = router;
