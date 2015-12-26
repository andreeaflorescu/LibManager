package libmanager

class Photo {
	String filename
    String fullPath

    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
    }
}