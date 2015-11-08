package libmanager

class BooksCopies {
	Books book;
	String status;
    static constraints = {
    	status(inList: ["Available", "Reserved", "Loaned"])
    }
}
