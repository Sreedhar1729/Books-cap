
const onBeforeBooksCreate = async (req) => {
    const {reldate} = req.data;
    const iAge = _getAge(reldate);
    console.log(`Age is:${iAge}`);
    console.log(req.data);
    if(iAge<1){
        req.error({
            code:400,
            message:"This book is not popular one or old one",
        });
    }

    console.log("Before Event is triggered");
};

const onAfterBooksCreate = async (req) => {
    console.log("After Event is triggered");
};


const _getAge = (sDate)=>{
const oToday = new Date(),
oBirthDate = new Date(sDate);

const age = oToday.getFullYear( )-oBirthDate.getFullYear();
return age;
}

 module.exports = {
    onBeforeBooksCreate,
    onAfterBooksCreate
}