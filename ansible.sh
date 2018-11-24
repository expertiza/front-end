# Create Vault file
echo $ANSIBLE_VAULT_PASS > vault_pass_file

# Run the ansible playbook
if [ $DEPLOY_ENV = "stable" ]
then
  # Production deploy
  ansible-playbook -i "${ANSIBLE_INVENTORY}" "${ANSIBLE_PLAYBOOK}" --vault-password-file vault_pass_file --extra-vars "deploy_env=stable"
else
  # Beta deploy
  ansible-playbook -i "${ANSIBLE_INVENTORY}" "${ANSIBLE_PLAYBOOK}" --vault-password-file vault_pass_file --extra-vars "deploy_env=beta"
fi

# Remove Vault file
rm -f vault_pass_file
