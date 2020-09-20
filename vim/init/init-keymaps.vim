"======================================================================
"
" init-keymaps.vim - 按键设置，按你喜欢更改
"
"   - 快速移动
"   - 标签切换
"   - 窗口切换
"   - 终端支持
"   - 编译运行
"   - 符号搜索
"
" Created by skywind on 2018/05/30
" Last Modified: 2018/05/30 17:59:31
"
"======================================================================
" vim: set ts=4 sw=4 tw=78 noet :


let mapleader = "\<space>"


"----------------------------------------------------------------------
" INSERT 模式下使用 EMACS 键位
"----------------------------------------------------------------------
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-_> <c-k>


"----------------------------------------------------------------------
" 设置 CTRL+HJKL 移动光标（INSERT 模式偶尔需要移动的方便些）
" 使用 SecureCRT/XShell 等终端软件需设置：Backspace sends delete
" 详见：http://www.skywind.me/blog/archives/2021
"----------------------------------------------------------------------
noremap <C-h> <C-W>h
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


"----------------------------------------------------------------------
" 命令模式的快速移动
"----------------------------------------------------------------------
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <c-d>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-_> <c-k>


"----------------------------------------------------------------------
" <leader>+数字键 切换tab
"----------------------------------------------------------------------
noremap <silent><leader>1 1gt<cr>
noremap <silent><leader>2 2gt<cr>
noremap <silent><leader>3 3gt<cr>
noremap <silent><leader>4 4gt<cr>
noremap <silent><leader>5 5gt<cr>
noremap <silent><leader>6 6gt<cr>
noremap <silent><leader>7 7gt<cr>
noremap <silent><leader>8 8gt<cr>
noremap <silent><leader>9 9gt<cr>
noremap <silent><leader>0 10gt<cr>


"----------------------------------------------------------------------
" 缓存：插件 unimpaired 中定义了 [b, ]b 来切换缓存
"----------------------------------------------------------------------
noremap <silent> <leader>bn :bn<cr>
noremap <silent> <leader>bp :bp<cr>


"----------------------------------------------------------------------
" TAB：创建，关闭，上一个，下一个，左移，右移
" 其实还可以用原生的 CTRL+PageUp, CTRL+PageDown 来切换标签
"----------------------------------------------------------------------

noremap <silent> <leader>tc :tabnew<cr>
noremap <silent> <leader>tq :tabclose<cr>
noremap <silent> <leader>tn :tabnext<cr>
noremap <silent> <leader>tp :tabprev<cr>
noremap <silent> <leader>to :tabonly<cr>


" 左移 tab
function! Tab_MoveLeft()
	let l:tabnr = tabpagenr() - 2
	if l:tabnr >= 0
		exec 'tabmove '.l:tabnr
	endif
endfunc

" 右移 tab
function! Tab_MoveRight()
	let l:tabnr = tabpagenr() + 1
	if l:tabnr <= tabpagenr('$')
		exec 'tabmove '.l:tabnr
	endif
endfunc

noremap <silent><leader>tl :call Tab_MoveLeft()<cr>
noremap <silent><leader>tr :call Tab_MoveRight()<cr>


"----------------------------------------------------------------------
" 编译运行 C/C++ 项目
" 详细见：http://www.skywind.me/blog/archives/2084
"----------------------------------------------------------------------

" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

