echo
inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
if [ "$inside_git_repo" ]; then
  read -r -p 'Commit Comment: ' usercmt
    if [ -z "$usercmt" ]; then
      echo "Comments cannot be Blank"
      exit -1
    else
      git add . && \
      git commit -m "$usercmt" && \
      git push -u origin master
      echo "Thankyou Git Repo is created and updated"
    fi
else
  echo "This folder is not a Git Repository, use git_new.sh"
  exit -1
fi
