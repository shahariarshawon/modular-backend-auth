import { z } from "zod";

export const userSchema = z.object({
  name: z.string(),
  email: z.email(),
  role: z.enum(["user", "student"]),
});