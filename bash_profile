if [ -f ~/.git-bash-completion.sh ]; then
  . ~/.git-bash-completion.sh
fi

export GOPATH=/Users/michael/workspace/gopath
export PATH=$PATH:/Users/michael/tools/sbt/bin
export PATH=$PATH:/Users/michael/tools/scala/bin
export PATH=$PATH:/Users/michael/tools/maven/bin
export PATH=$PATH:/Users/michael/bin
# export PATH=$PATH:"/Users/michael/tools/openshift/"
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin":$PATH
# export PATH=$PATH:/Users/michael/tools/minishift
# export PATH="/Users/michael/tools/protoc":$PATH
# eval $(minishift oc-env)

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

#alias python="python3"
