//import do aspects ou entidades que sejam necessários
using {managed} from '@sap/cds/common';


namespace sales;

entity SalesOrderHeaders:managed {
    key id: UUID;
}

