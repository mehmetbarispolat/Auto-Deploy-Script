repos=( 
  "ShellScriptTest1"
  "ShellScriptTest2"
)
for repo in "${repos[@]}"; do
    (cd "${repo}" && git reset --hard && git clean -fdx && git checkout master && git pull)
done

docker-compose up