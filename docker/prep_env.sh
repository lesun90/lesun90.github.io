function check_in_docker() {
  if [ -f /.dockerenv ]; then
    IN_DOCKER=true
  else
    IN_DOCKER=false
  fi
  export IN_DOCKER
}

function exe_source_command() {
  echo '# Install Ruby Gems to ~/gems' >>~/.bashrc
  echo 'export GEM_HOME="$HOME/gems"' >>~/.bashrc
  echo 'export PATH="$HOME/gems/bin:$PATH"' >>~/.bashrc
  echo "ulimit -c unlimited" >>~/.bashrc
  source ~/.bashrc
  source /etc/profile.d/rvm.sh
}

check_in_docker

if [ -z $SOURCED ]; then
  exe_source_command
  export SOURCED=1
fi
