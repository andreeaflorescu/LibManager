package libmanager

class LoginController {
    def adminpass = "123456"
    def index() {
        render (view: "index")
    }

    def registerIndex() {
        render (view: "register")
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
            def user = Users.findByUsername(params.username)
            if (user) {
                if (user.password == params.password) {
                    redirectUser(user)
                } else {
                    println "Wrong password"
                    flash.error = "Wrong username or password"
                    render (view: "index")
                }
            }
        }
    }

    // true -> password is good
    // false -> password is too weak
    def checkPasswordStrength(password) {
        // length [8,24]
        def strongPass = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#\$%]).{6,24})"
        return password =~ strongPass;
    }

    def register() {
        println "Create user"

        // check if username does not exist
        def user = Users.findByUsername(params.username)
        if (user) {
            flash.error = "Username already taken. Please enter a different username"
            render(view: "register")
        }
        
        // check password strength
        if (!checkPasswordStrength(params.password)) {
            flash.error = "Password must have between 8 and 24 letters;"
            flash.error += "contains at least one uppercase letter;"
            flash.error += " contains at least one lowercase letter;"
            flash.error += " a special character must occur at least once - @#\$%"

           render(view: "register")
        }

        // chech if passwords are the same
        if (params.password != params.repassword) {
            flash.error = "Passwords don't match."
            render(view: "register")
        }

        // if admin passcode is empty -> create user account
        // else, verify the passcode and create admin account
        def userSave
        if (!params.adminpass) {
            userSave = new Users(username: params.username, 
                                     password: params.password, 
                                     role: "reader")
        } else {
            if (params.adminpass == adminpass) {
                userSave = new Users(username: params.username, 
                                         password: params.password, 
                                         role: "admin")
            } else {
                flash.error = "Invalid admin passcode!"
                render(view: "register")
            }
        }

        if (!userSave.save()) {
            userSave.errors.each {
                println it
                render(view: "register")
            }
        } else {
            println "Succesful created user; redirect to page;"
            redirectUser(userSave)
        }
    }
}