package libmanager

class Users {
	String role
	String username
	String password
	Grade grade;
	
    static constraints = {
    	role(inList: ["admin", "reader"])
    	grade(nullable: true)
    }
}
