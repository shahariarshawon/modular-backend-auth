import { Router } from "express";
import { AuthController } from "./auth.controller.js";
import validateSchema from "../../middleware/validateSchema.js";
import { loginSchema, registerSchema } from "./auth.validation.js";

const router:Router = Router();

router.post(
  "/register",
  validateSchema(registerSchema),
  AuthController.register,
);

router.post("/login", validateSchema(loginSchema), AuthController.login);

export default router;
