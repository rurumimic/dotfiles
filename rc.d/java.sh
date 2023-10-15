### Java ###

# jenv
if [ -d "$HOME/.jenv/bin" ]; then
    export PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)"
fi

# maven
if [ -d "/opt/maven/apache-maven-3.9.5/bin" ]; then
    export PATH="$PATH:/opt/maven/apache-maven-3.9.5/bin"
fi

# gradle
if [ -d "/opt/gradle/gradle-8.3/bin" ]; then
    export PATH="$PATH:/opt/gradle/gradle-8.3/bin"
fi
