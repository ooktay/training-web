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
