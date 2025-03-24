# Iniciar el agente SSH si no está en ejecución
if [ -z "$SSH_AUTH_SOCK" ]; then
   eval "$(ssh-agent -s)"
fi

# Agregar tu clave SSH al agente
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1