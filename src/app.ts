import express from "express";
import router from "./app/routes/routes.js";
import notFound from "./app/middleware/notFound.js";

const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Server is running");
});

app.use("/api/v1", router);

app.use(notFound);

export default app;