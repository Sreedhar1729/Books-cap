using {Books.db as db} from '../db/Books-Model';

@path: '/BooksSRV'

service BooksService {
    entity Books   as projection on db.Books;
     entity Authors as projection on db.Authors;
    entity Address as projection on db.Address;
}


annotate BooksService.Authors with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: false
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: false
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});
