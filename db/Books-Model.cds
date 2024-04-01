namespace Books.db;
using { reusabletypes.db as types } from './reusabletypes';


using {cuid} from '@sap/cds/common';


entity Books : cuid {
    title  : String;
    descr  : String;
    amount:types.Amount;
    email:types.Email;
    phone:types.PhoneNumber;
    author : Composition of  Authors;
}

entity Authors : cuid {
    name : String;
    book : Composition of  many Books
               on book.author = $self;
}
