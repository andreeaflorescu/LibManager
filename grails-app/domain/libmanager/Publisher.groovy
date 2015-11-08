package libmanager

class Publisher {
	String name;
	static hasMany = [books:Books]

    static constraints = {
    }
}
