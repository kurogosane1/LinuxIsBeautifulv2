const express = require("express");
const app = express();
import { PrismaClient } from "@prisma/client";
const PORT = process.env.PORT || 4500;

// BodyParser makes it possible for our server to interpret data sent to it.
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.text());
app.use(express.json({ type: "application/vnd.api+json" }));
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Hello world!");
});

app.listen(PORT, function () {
  console.log(`Server is running on port ${PORT}`);
});
