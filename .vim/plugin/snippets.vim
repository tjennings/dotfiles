func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

nmap <silent> <Tab> /!@[^@]*@!/<CR>"_cf!
nmap <silent> ; /!@[^@]*@!/<CR>"_cf!

iab <silent> ea each do \|!@block_variable@!\|<CR>!@block@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> eal each { \|!@block_variable@!\| !@block@! }<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

iab <silent> dm def !@method@!<CR>!@method_body@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

iab <silent> des describe '!@method@!' do<CR>!@its@!<CR>end<Esc>2k0;<C-R>=Eatchar('\s')<CR>
iab <silent> iit it "should !@should@!" do<CR>!@something@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> desit describe '!@method@!' do<CR>it "should !@should@!" do<CR>!@stuff@!<CR>end<CR>end<CR><Esc>5k<Esc>;<C-R>=Eatchar('\s')<CR>
iab <silent> bef before(:each) do<CR>end<CR><Esc>kO<C-R>=Eatchar('\s')<CR>
