import { z } from "zod";
import { type Request, type Response, type NextFunction } from "express";

const validateSchema = (schema: z.ZodSchema) => {
  return (req: Request, res: Response, next: NextFunction) => {
    try {
      schema.parse(req.body);
      next();
    } catch (error) {
      res.status(400).json({
        success: false,
        message: "Validation failed",
        error,
      });
    }
  };
};

export default validateSchema;
