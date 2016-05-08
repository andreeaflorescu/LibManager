package libmanager

class BooksController {

    def index() { }

    def addAuthor(String name) {

    }

    def renderAdminBooksPage() {
        render (view: "add_books")
    }

    def renderAdminLoansPage() {
        render (view: "admin_loans")
    }

    def renderAdminReservationsPage() {
        render (view: "admin_reservations")
    }

    def renderAdminRequestsPage() {
        render (view: "admin_requests")
    }

    def renderClientBooksPage() {
        render (view: "find_books")
    }

    def renderClientReservationsPage() {
        render (view: "view_reserved_books")
    }

    def renderClientLoansPage() {
        render (view: "view_loaned_books")
    }

    def uploadCoverPhoto() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def photoInstance = new Photo()
            photoInstance.filename = file.originalFilename
            photoInstance.fullPath = grailsApplication.config.uploadFolder + "/" +photoInstance.filename
            file.transferTo(new File(photoInstance.fullPath))
            photoInstance.save()
        }
        redirect (action:'list')
    }

    def savePhoto(file) {
        def photoInstance = new Photo()
        photoInstance.filename = file.originalFilename
        photoInstance.fullPath = grailsApplication.config.uploadFolder + 
                                 "/" + photoInstance.filename
        file.transferTo(new File(photoInstance.fullPath))
        photoInstance.save()

        return photoInstance
    }

    def addBook() {
        def file = request.getFile('file')
        if(file.empty) {
            println "file is empty"
            flash.message = "File cannot be empty"
            redirect(controller: "books",
                action: "renderAdminBooksPage")
        } else {

            def book = new Books()
            book.cover = savePhoto(file)
            // find publisher; if is not found, create one
            if (!params.publisher) {
                flash.message = "Publisher cannot be empty"
                redirect(controller: "books",
                    action: "renderAdminBooksPage")
            }

            // create publisher if it doesn't exist
            def publisher = Publisher.findByName(params.publisher)
            if (!publisher) {
                publisher = new Publisher(name: params.publisher)
                publisher.save()
            }
            book.publisher = publisher

            // iterate over authors and create the one that do not exist
            def authors = params.findAll { name, value -> 
                name.contains('author#')
            }

            def bookAuthors = []
            book.bookAuthors = []
            authors.each {index, authorName ->
                def author = BooksAuthors.findByName(authorName)
                if (!author) {
                    author = new BooksAuthors(name: authorName)
                    author.save()
                }
                bookAuthors.add(author)
                book.bookAuthors.add(author)
            }

            book.isbn = params.isbn
            book.title = params.book_title
            book.pages = params.nr_pages.toInteger()

            if (!book.save()) {
                book.errors.each {
                    println it
                    redirect(controller: "books",
                        action: "renderAdminBooksPage")                
                }
            } else {
                println "Succesful created user; redirect to page;"
                render "TODO"
            }
        }
    }
}