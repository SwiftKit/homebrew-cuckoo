class Cuckoo < Formula
    desc "Command-line tool for generating Cuckoo mock files."
    homepage "https://github.com/SwiftKit/CuckooGenerator"
    url "https://github.com/SwiftKit/CuckooGenerator.git", :tag => "0.1.0", :revision => "9f85d092f4a5469bdd9b7af49d1aefa65e0c7ee0"
    head "https://github.com/SwiftKit/CuckooGenerator.git"

    depends_on "carthage"
    depends_on :xcode => ["7.1", :build]
    
    def install
        system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/CuckooGenerator.dst"
    end
    
    test do
        system "#{bin}/cuckoo", "version"
    end
end
