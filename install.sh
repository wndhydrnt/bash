#!/usr/bin/env bash

set -e

create_symlink=0
# https://gist.github.com/TheMengzor/968e5ea87e99d9c41782
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ -L "${HOME}/.bash_profile" ]]; then
  symlink_target=$(readlink ${HOME}/.bash_profile)
  local_bash_profile="${script_dir}/.bash_profile"
  if [[ ! "${symlink_target}" == "${local_bash_profile}" ]]; then
    echo "Removing current .bash_profile because it is a symlink..."
    rm "${HOME}/.bash_profile"
    create_symlink=1
  fi
else
  if [[ -f "${HOME}/.bash_profile" ]]; then
    echo "Creating backup of ${HOME}/.bash_profile..."
    mv "${HOME}/.bash_profile" "${HOME}/.bash_profile.bck"
    create_symlink=1
  else
    create_symlink=1
  fi
fi

if [[ "${create_symlink}" -eq "1" ]]; then
  echo "Linking ${script_dir}/.bash_profile to ${HOME}/.bash_profile"
  ln -s "${script_dir}/.bash_profile" "${HOME}/.bash_profile"
fi

echo "Installation complete"
