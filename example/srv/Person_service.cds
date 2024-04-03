using {demo.db as db} from '../db/demo-model';

@path: '/PersonSRV'
service PersonService {
    entity Person  as projection on db.Person;
    entity Address as projection on db.Address;


}
