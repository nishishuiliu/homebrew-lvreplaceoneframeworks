# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Lvsourceeditors < Formula
    desc "replace #import to @import quote"
    homepage "http://lvioscode.com/ios_support_tools/LvmmSourceEditor.git"
    url "http://10.200.5.103/ios_support_tools/LvmmSourceEditor/raw/1.1.3/ReplaceOneFramework/lvrof"
    version "1.1.3"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    
    # depends_on "cmake" => :build
    
    def install
        # ENV.deparallelize  # if your formula fails when building in parallel
        
        # system "cmake", ".", *std_cmake_args
        # system "make", "install" # if this fails, try separate make/make install steps
        bin.install "lvrof"
    end
    
    test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test LVSourceEditors`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
end
end

