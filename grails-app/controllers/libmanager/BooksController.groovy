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
            photoInstance.fullPath = grailsApplication.config.uploadFolder + photoInstance.filename
            file.transferTo(new File(photoInstance.fullPath))
            photoInstance.save()
        }
        redirect (action:'list')
    }

    def addBook() {

        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            // Create photo instance
            def photoInstance = new Photo()
            photoInstance.filename = file.originalFilename
            photoInstance.fullPath = grailsApplication.config.uploadFolder + photoInstance.filename
            file.transferTo(new File(photoInstance.fullPath))
            photoInstance.save()

            // find publisher; if is not found, create one
            def publisher = Publisher.findByName(params.publisher)
        }

        println params;
        render "bla";
    }
}
