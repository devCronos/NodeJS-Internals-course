//. means from the point of the current __filename
// require("./c.js")
import "./b.mjs";
console.log("loading module a");

for (let i = 0; i < 100000000; i++);

console.log("end module a");
