" Author:  cocopon <cocopon@me.com>
" License: MIT License


" Color palette from vim-hybrid
if exists('g:hybrid_reduced_contrast') && g:hybrid_reduced_contrast == 1
    let s:mono0 = '#232c31'
    let s:mono1 = '#2d3c46'
    let s:mono3 = '#425059'
    " let s:mono4 = '#6c7a80'
    let s:mono4 = '#657278'
else
    let s:mono0 = '#1d1f21'
    let s:mono1 = '#282a2e'
    let s:mono3 = '#373b41'
    let s:mono4 = '#707880'
endif

let s:mono2    = '#24262a'
let s:mono4_hi = '#9fa4a6'
let s:mono5    = '#c5c8c6'
let s:c_mono0  = 234
let s:c_mono1  = 236
let s:c_mono2  = 235
let s:c_mono3  = 238
let s:c_mono4  = 243
let s:c_mono5  = 15

let s:red          = '#cc6666'
let s:green        = '#b5bd68'
let s:blue         = '#81a2be'
let s:orange       = '#de935f'
let s:dark_blue1   = '#5c6e80'
" #4d5a66
let s:dark_blue2   = '#425059'
" let s:dark_blue2   = '#353c44'
let s:c_red        = 9
let s:c_green      = 143
let s:c_blue       = 75
let s:c_orange     = 215
let s:c_dark_blue1 = 32
let s:c_dark_blue2 = 24
let s:c_light_gray = 250


let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:lightline_hybrid_style')
			\ ? g:lightline_hybrid_style
			\ : ''

" [[guifg, guibg, ctermfg, ctermbg], ...]
if s:style == 'plain'
	let s:p.normal.middle = [
				\ [s:mono3, s:mono4, s:c_mono3, s:c_mono4]]
	let s:p.normal.left = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
else
	let s:p.normal.middle = [
				\ [s:mono4_hi, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.normal.left = [
				\ [s:mono0, s:green, s:c_mono0, s:c_green],
				\ [s:mono5, s:mono3, s:c_mono5, s:c_mono3]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4_hi, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4_hi, s:c_mono0, s:c_mono4]]
	let s:p.insert.middle = [
				\ [s:mono5, s:dark_blue2, s:c_blue, s:c_dark_blue2]]
	let s:p.insert.right = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_light_gray],
				\ [s:mono0, s:mono5, s:c_mono0, s:c_light_gray]]
	let s:p.replace.middle = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.replace.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
endif

let s:p.normal.error = [
			\ [s:mono0, s:red, s:c_mono0, s:c_red]]
let s:p.normal.warning = [
			\ [s:mono0, s:orange, s:c_mono0, s:c_orange]]

let s:p.inactive.middle = [
			\ [s:mono4, s:mono2, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:mono0, s:blue, s:c_mono0, s:c_blue],
			\ [s:mono5, s:dark_blue1, s:c_mono5, s:c_dark_blue1]]
			" INSERT 時の2段階目の色を変えてわかりやすく
let s:p.replace.left = [
			\ [s:mono0, s:red, s:c_mono0, s:c_red],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:mono0, s:orange, s:c_mono0, s:c_orange],
			\ s:p.normal.left[1]]

if s:style == 'plain'
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.right = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.left = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
else
	let s:p.tabline.middle = [
				\ [s:mono5, s:mono3, s:c_mono5, s:c_mono3]]
				"\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.right = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.left = [
				\ [s:mono4_hi, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
endif


let g:lightline#colorscheme#hybrid#palette = s:p
