import express, { type Request, type Response } from "express";

const app = express();
const port = process.env.PORT || 5000;

app.get("/", (req: Request, res: Response) => {
  res.send("Server kaj korteche tmi tension koriona");
});

app.listen(port, () => {
  console.log("Server is running");
});
