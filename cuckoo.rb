class Cuckoo < Formula
    desc "Command-line tool for generating Cuckoo mock files."
    homepage "https://github.com/SwiftKit/CuckooGenerator"
    url "https://github.com/SwiftKit/CuckooGenerator.git", :tag => "0.4.0"
    head "https://github.com/SwiftKit/CuckooGenerator.git"

    depends_on "carthage" => :build
    depends_on :xcode => ["7.3", :build]
    
    def install
        system "make", "prefix_install", "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/CuckooGenerator.dst"
    end
    
    test do
        system "#{bin}/cuckoo", "version"
    end
end
