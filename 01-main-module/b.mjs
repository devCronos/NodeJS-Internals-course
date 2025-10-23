// require("./c.js");
import "./c.mjs";

console.log("loading module b");

for (let i = 0; i < 1_000_000_000; i++);

console.log("end module b");
