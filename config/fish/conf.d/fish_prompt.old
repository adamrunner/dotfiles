function fish_prompt

  if not set -q -g __fish_git_prompt
  set -g __fish_git_prompt
  function _git_branch_name
    echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
  end

  function _is_git_dirty
    echo (git status -s --ignore-submodules=dirty ^/dev/null)
  end
  end
	set -l prompt_symbol ''
	switch $USER
		case root; set prompt_symbol '#'
		case '*';  set prompt_symbol '$'
	end

	set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
	set -l pwd (echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g')
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)
	set -l magenta (set_color magenta)
	set -l green (set_color $fish_color_cwd)
  set -l cwd "$green$pwd"

  if [ (_git_branch_name) ]
  set -l git_branch $magenta(_git_branch_name)
  set git_info "$magenta($git_branch)"

  if [ (_is_git_dirty) ]
    set -l dirty "$yellow ✗"
    set git_info "$git_info$dirty"
  end
  end

  echo -n -s "$USER@$cwd$git_info$normal$prompt_symbol "
end
