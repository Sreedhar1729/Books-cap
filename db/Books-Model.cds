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
    address:Composition of    many Address on address.book=$self;
}


entity Address : cuid {
  city     : String not null;
  address  : String not null;
  pincode  : Integer not null;
  street   : String;
  landmark : String;
  book:Association to Books;
}

entity Authors : cuid {
    name : String;
    
}