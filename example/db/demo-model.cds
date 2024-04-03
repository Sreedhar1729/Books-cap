namespace demo.db;
using { reusable.types as types } from './reusable-types';
using { cuid } from '@sap/cds/common';



entity Person:cuid
{
address:Association to Address; 
    fname:types.fname;
    lname:types.lname;
    phone:String;

}

entity Address {

key id : UUID;
    place:String;
    pin:Integer;

}