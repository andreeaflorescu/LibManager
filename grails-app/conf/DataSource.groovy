dataSource {
    pooled = true
    dbCreate = "update"
    url = "jdbc:mysql://localhost/libmanager"
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
    username = "root"
    password = "root"
}