
const onBeforeBooksCreate = async (req) => {
    console.log("Before Event is triggered");
}

const onAfterBooksCreate = async (req) => {
    console.log("After Event is triggered");
}

module.exports = {
    onBeforeBooksCreate,
    onAfterBooksCreate
}