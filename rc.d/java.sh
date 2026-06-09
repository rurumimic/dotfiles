### Java ###

# jenv (lazy init for fast shell startup)
# Shims are on PATH eagerly so `java`, `javac`, `mvn`, `gradle` work right away.
# The full `jenv init -` (rehash, completions, JAVA_HOME export precmd hook)
# runs only the first time you invoke `jenv`.
if [ -d "$HOME/.jenv/bin" ]; then
    export PATH="$HOME/.jenv/bin:$HOME/.jenv/shims:$PATH"
    export JENV_SHELL=zsh

    jenv() {
        unset -f jenv
        eval "$(command jenv init -)"
        jenv "$@"
    }
fi

# maven
if [ -d "/opt/maven/apache-maven-3.9.5/bin" ]; then
    export PATH="$PATH:/opt/maven/apache-maven-3.9.5/bin"
fi

# gradle
if [ -d "/opt/gradle/gradle-8.3/bin" ]; then
    export PATH="$PATH:/opt/gradle/gradle-8.3/bin"
fi
