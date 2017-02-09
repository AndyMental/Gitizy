inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
if [ "$inside_git_repo" ]; then
  read -p 'Commit Comment: ' usercmt
  if [ -z "$usercmt" ]; then
    echo "Comments cannot be Blank"
    exit -1
  else
    echo
    git add . && \
    git commit -m "$usercmt" && \
    git pull && \
    git push
    echo Thankyou changes are updated to Git and pushed to Active Branch
  fi
else
  echo "This folder is not a Git Repository, use gn"
  exit -1
fi
