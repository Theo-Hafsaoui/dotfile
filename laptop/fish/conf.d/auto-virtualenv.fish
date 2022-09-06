function _auto_virtualenv_install --on-event auto-virtualenv_install
  set --query auto_virtualenv_dirs || set --universal auto_virtualenv_dirs '.venv' 'venv'
  status is-interactive && auto_virtualenv
end

function _auto_virtualenv_update --on-event auto-virtualenv_update
  status is-interactive && auto_virtualenv
end

function _auto_virtualenv_uninstall --on-event auto-virtualenv_uninstall
  set --erase auto_virtualenv_dirs
end

if status is-interactive
  function _auto_virtualenv_on_pwd --on-variable PWD
    auto_virtualenv
  end
end
