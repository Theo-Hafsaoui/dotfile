function _auto_virtualenv_dirname --argument-names path
  set --local parts (string split --right --max 1 / $path)
  echo $parts[1]
end

function auto_virtualenv
  set --local real_pwd (realpath $PWD)
  set --local active_dir ""

  if set --query VIRTUAL_ENV
    set active_dir (_auto_virtualenv_dirname "$VIRTUAL_ENV")
    if test "$active_dir" = "$real_pwd"
      # The virtualenv in the current directory is already active
      return
    end
  end

  # Look for a new virtualenv
  for name in $auto_virtualenv_dirs
    set --local activate "$name/bin/activate.fish"
    if test -e "$activate"
      # There's a virtualenv here, activate it (after deactivating any current virtualenv).
      if set --query VIRTUAL_ENV
        deactivate
      end

      source "$activate"
      return
    end
  end

  # No virtualenv here. If none is active this is ok, otherwise check if it should be deactivated.
  # We keep it active only if it's an ancestor of the current directory.
  if set --query VIRTUAL_ENV
    if string match "$active_dir/*" "$real_pwd" >/dev/null
      return
    else
      deactivate
    end
  end
end
