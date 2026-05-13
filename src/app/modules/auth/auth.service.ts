import jwt from "jsonwebtoken";
import env from "../../../config/env.js";

type User = {
  name: string;
  email: string;
  password: string;
};

const users: User[] = [];

const registerUser = (payload: User) => {
  const existingUser = users.find((u) => u.email === payload.email);

  if (existingUser) {
    throw new Error("User already exists");
  }

  users.push(payload);

  return payload;
};

const loginUser = (payload: { email: string; password: string }) => {
  const user = users.find(
    (u) => u.email === payload.email && u.password === payload.password
  );

  if (!user) {
    throw new Error("Invalid credentials");
  }

  const token = jwt.sign(
    { email: user.email },
    env.jwt_secret,
    { expiresIn: "1d" }
  );

  return {
    user,
    token,
  };
};

export const AuthService = {
  registerUser,
  loginUser,
};