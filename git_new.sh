read -p 'Commit Comment: ' usercmt
  echo
  git init && \
  hub create && \
  this_git_repo="$(git config remote.origin.url)"
  git remote add origin $this_git_repo
  git push -u origin master
  echo Thankyou Git Repo is created and updated
