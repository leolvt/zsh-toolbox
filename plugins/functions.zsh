# kill process with fzf
function kl() {
	ps -u $USER -o pid,stat,%cpu,%mem,cputime,command | fzf | awk '{print $1}' | xargs kill
}
