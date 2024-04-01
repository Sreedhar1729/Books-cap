const cds = require("@sap/cds");
const { onBeforeBooksCreate, onAfterBooksCreate } = require("./src/BooksOperation");

module.exports = cds.service.impl(async (srv) => {
  srv.before("CREATE", "Books", onBeforeBooksCreate);
  srv.after("CREATE", "Books", onAfterBooksCreate);
});
