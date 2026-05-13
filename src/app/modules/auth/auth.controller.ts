import { type Request, type Response } from "express";
import { AuthService } from "./auth.service.js";
import sendResponse from "../../../utils/sendResponse.js";
import catchAsync from "../../../utils/catchAsync.js";

const register = catchAsync(async (req: Request, res: Response) => {
  const result = AuthService.registerUser(req.body);

  sendResponse(res, {
    statusCode: 201,
    success: true,
    message: "User registered successfully",
    data: result,
  });
});

const login = catchAsync(async (req: Request, res: Response) => {
  const result = AuthService.loginUser(req.body);

  sendResponse(res, {
    statusCode: 200,
    success: true,
    message: "Login successful",
    data: result,
  });
});

export const AuthController = {
  register,
  login,
};
