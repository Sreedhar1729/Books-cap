using {Books.db as db} from '../db/Books-Model';

@path: '/BooksSRV'

service BooksService {
    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;
    entity Address as projection on db.Address;


}
