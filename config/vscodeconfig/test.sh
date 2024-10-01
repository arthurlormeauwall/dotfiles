function test {
  cpr User us2
  rm -rf User
  rm -rf ~/.config/Code/User/
  mv us2 User
}
