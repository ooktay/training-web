environments {
    dev {
        baseUrl {
            site = 'http://localhost:8080/'
        }
        web {
            driverType = 'CHROME'
            pageLoadTimeout = 5
            elementTimeout = 3
        }
        sqldb {
            'default' {
                jdbcUrl = 'jdbc:mysql://db4free.net/snapbytes'
                username = 'snaptest'
                password = 'snaptest34'
            }
        }
    }

    test {
    }

    uat {
    }

    preprod {
    }

    prod {
    }
}
