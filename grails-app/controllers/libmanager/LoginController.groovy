package libmanager

class LoginController {

    def index() {
        render (view: "index")
    }

    def scaffold = Users
    def isEmpty(myString) {
        return !(myString && !myString.allWhitespace)
    }

    def list() {
        render (view: "list", model: [users: Users.getAll()])
    }

    def redirectUser(user) {
        if (user.role == "admin") {
            println "Admin"
            redirect(controller: "books",
                    action: "renderAdminBooksPage")

        } else {
            println "Reader"
            redirect(controller: "books",
                    action: "renderClientBooksPage")
        }
    }

    def login() {
        println "$params.username  $params.password"
        if (isEmpty(params.username) || isEmpty(params.password)) {
            flash.error = "Wrong username or password"
            render (view: "index")
            println "Username or password is empty"
            
        } else {
            def user = Users.findByUsername(params.username);
            if (user) {
                if (user.password == params.password) {
                    redirectUser(user)
                } else {
                    println "Wrong password"
                    flash.error = "Wrong username or password"
                    render (view: "index")
                }
            } else {
                println "Create user"
                def userSave = new Users(username: params.username, password: params.password, role: params.role)
                if (!userSave.save()) {
                    userSave.errors.each {
                        println it
                    }
                }
                redirectUser(userSave)
            }
        }
    }
}