component {
    remote any function getUsers() {
        var query = new Query();
        query.setDataSource("demo");
        query.setSQL("SELECT * FROM persons");
        return query.execute().getResult();
    }

    remote string function getNthFirstName(rowNumber) {
        var query = new Query();
        query.setDataSource("demo");
        query.setSQL("SELECT FirstName FROM persons LIMIT :rowNumber, 1");
        query.addParam(name="rowNumber", value=rowNumber, cfsqltype="CF_SQL_INTEGER");
        var result = query.execute().getResult();
        return result.FirstName;
    }
}
