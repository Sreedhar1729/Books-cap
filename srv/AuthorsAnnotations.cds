using { BooksService } from './Books-srv';


annotate BooksService.Authors with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
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

