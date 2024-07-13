   76  ssh localhost
   77  ls -ls .ssh/
   78  ssh-keygen
   79  ll .ssh/
   80  cat .ssh/id_rsa.pub >> .ssh/authorized_keys
   81  cat .ssh/authorized_keys 
   82  cd UTN-FRA_SO_Examenes/
   83  ls
   84  cd 202407_Recu/
   85  cd ansible
   86  ls
   87  cd roles
   88  ls
   89  ansible-galaxy role init instala-tools_Aranda
   90  ls
   91  cd ..
   92  vim playbook.yml
   93  cd roles
   94  ls
   95  cd 2PRecuperatorio/
   96  ls
   97  vim tasks/main.yml
   98  cd ..
   99  ls
  100  cd instala-tools_Aranda/
  101  ls
  102  vim tasks/main.yml
  103  cd ..
  104  ansible-playbook -i inventory/hosts playbook.yml
  105  sudo ansible-playbook -i inventory/hosts playbook.yml
  106  htop --version
  107  tmux -V
  108  tree --version
  109  cd ..
  110  cat /temp/alumno/datos.txt
  111  cd /temp
  112  ls
  113  cat /tmp/alumno/datos.txt
