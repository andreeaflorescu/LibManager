package libmanager

class BooksController {

    def index() { }

    def addAuthor(String name) {

    }

    def addBook(String title, int numberOfPages, String publisher, 
    	String isbn, URL path, String[] authors) {
    	
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
        render "you are a reader"
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
}
