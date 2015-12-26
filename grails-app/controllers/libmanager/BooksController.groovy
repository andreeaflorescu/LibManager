package libmanager

class BooksController {

    def index() { }

    def addAuthor(String name) {

    }

    def addBook(String title, int numberOfPages, String publisher, 
    	String isbn, URL path, String[] authors) {
    	
    }

    def renderAdminBooksPage() {
        render "your are admin"
    }

    def renderClientBooksPage() {
        render "you are a reader"
    }
}
