if v:version >= 703
  setlocal colorcolumn=80
endif
call ToggleTabs()
setlocal number makeprg=pep8\ %
setlocal shiftwidth=4 tabstop=4 autoindent
