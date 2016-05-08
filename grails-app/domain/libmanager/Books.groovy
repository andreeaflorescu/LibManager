package libmanager

class Books {
	String isbn;
	String title;
	Photo cover;
	int pages;

	static hasOne = [publisher: Publisher]
	static hasMany = [bookAuthors: BooksAuthors]
    static constraints = {
    }
}
