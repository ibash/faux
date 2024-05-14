--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsluv = lush.hsluv

local opt = {}


local p = {
	-- bg = hsluv("#1f1f28"),
  --bg = hsluv("#1C1C1C").da(35),
  bg = hsluv("#1C1C1C").da(60).sa(1),

  --fg = hsluv("#dcd7ba").abs_sa(100),
  --fg = hsluv("#DADADA"),
  --fg = hsluv(0, 24, 87),
  --fg = hsluv(0, 8, 87),
  --fg = hsluv(0, 100, 87),
  --fg = hsluv(250, 24, 87),
  --fg = hsluv(60, 8, 87),
  --fg = hsluv(78, 8, 86),
  fg = hsluv(0, 0, 84),

	leaf = hsluv("#98bb6c"),
	water = hsluv("#7fb4ca"),
	rose = hsluv("#e46876"),
	wood = hsluv("#e6c384"),
	blossom = hsluv("#957fb8"),
	sky = hsluv("#7fb4ca"),

  purp = hsluv("#8787af"),
  yell = hsluv("#FFFF0B"),
  white = hsluv(0, 0, 94),
  blue = hsluv('#005faf').desaturate(20).lighten(20),
}

local p1 = {
  bg = p.bg,
  fg1 = p.fg.da(10),
  fg2 = p.fg.da(14),
  fg3 = p.fg.da(20),
  fg4 = p.fg.da(24),
  fg5 = p.fg.da(30),
  fg6 = p.fg.da(42),
}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  -- return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- ErrorMsg       { }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal         { }, -- Normal text
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Comment        { }, -- Any comment

    -- Constant       { }, -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { }, -- (*) Any variable name
    -- Function       { }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
  -- }

  return {
    Normal          { bg = p1.bg or "NONE", fg = p.fg }, -- normal text

    Underlined      { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold            { gui = "bold" },
    Italic          { gui = "italic" },

    Error           { fg = p.rose }, -- (preferred) any erroneous construct
    ErrorMsg        { Error }, -- error messages on the command line
    WarningMsg      { fg = p.wood }, -- warning messages

    Comment         { fg = p1.bg.li(38).de(24), gui = "NONE" }, -- any comment
    Conceal         { fg = p1.fg5, gui = "bold,italic" }, -- placeholder characters substituted for concealed text (see 'conceallevel')

    Cursor          { bg = p.fg.li(20), fg = p1.bg }, -- character under the cursor
    lCursor         { Cursor, bg = Cursor.bg.da(35)  }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    TermCursor      { Cursor }, -- cursor in a focused terminal
    TermCursorNC    { lCursor }, -- cursor in an unfocused terminal

    CursorLine      { bg = p1.bg.li(opt.lighten_cursor_line or 4) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn    { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn     { bg = p.wood.saturation(46).lightness(p1.bg.l + 18) }, -- used for the columns set with 'colorcolumn'

    DiffAdd         { bg = p.leaf.saturation(60).lightness(p1.bg.l + 12) }, -- diff mode: Added line |diff.txt|
    DiffChange      { bg = p.water.saturation(60).lightness(p1.bg.l + 12) }, -- diff mode: Changed line |diff.txt|
    DiffDelete      { bg = p.rose.saturation(40).lightness(p1.bg.l + 12) }, -- diff mode: Deleted line |diff.txt|
    DiffText        { bg = p.water.saturation(60).lightness(p1.bg.l + 24), fg = p.fg }, -- diff mode: Changed text within a changed line |diff.txt|

    LineNr          { fg = p1.bg.li(opt.lighten_line_nr or 35), bg = opt.solid_line_nr and p1.bg.li(4) or "NONE" }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    SignColumn      { LineNr }, -- column where |signs| are displayed
    FoldColumn      { LineNr, gui = "bold" }, -- 'foldcolumn'
    Folded          { bg = not opt.transparent_background and p1.bg.li(14) or "NONE", fg = p1.bg.li(64) }, -- line used for closed folds
    CursorLineNr    { LineNr, fg = p.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg         { fg = p.leaf, gui = "bold" }, -- |more-prompt|
    NormalFloat     { bg = p1.bg.li(10) }, -- Normal text in floating windows.
    FloatBorder     { fg = p1.bg.li(46), bg = opt.solid_float_border and NormalFloat.bg or "NONE" }, -- Normal text in floating windows.

    Pmenu           { bg = p1.bg.li(10) }, -- Popup menu: normal item.
    PmenuSel        { bg = p1.bg.li(22) }, -- Popup menu: selected item.
    PmenuSbar       { bg = p1.bg.li(32) }, -- Popup menu: scrollbar.
    PmenuThumb      { bg = p1.bg.li(50) }, -- Popup menu: Thumb of the scrollbar.

    Search          { bg = p.blossom.lightness(p1.bg.l + 24), fg = p.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch       { bg = p.blossom.lightness(p1.bg.l + 56), fg = p1.bg, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    MatchParen      { Search }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    CurSearch       { IncSearch },

    SpellBad        { fg = Error.fg.de(30), gui = "undercurl", guisp = Error.fg }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap        { SpellBad, guisp = Error.fg.da(10) }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal      { SpellCap }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare       { SpellBad, guisp = p.wood }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    StatusLine      { bg = p1.bg.li(12), fg = p.fg }, -- status line of current window
    StatusLineNC    { bg = p1.bg.li(6), fg = p.fg.li(28) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine         { StatusLine }, -- tab pages line, not active tab page label
    TabLineFill     { StatusLineNC }, -- tab pages line, where there are no labels
    TabLineSel      { gui = "bold" }, -- tab pages line, active tab page label
    WinSeparator    { fg = LineNr.fg, bg = opt.solid_vert_split and StatusLineNC.bg or "NONE" },
    VertSplit       { WinSeparator },

    Visual          { bg = p.fg.de(18).lightness(p1.bg.l + 18) }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

    NonText         { fg = p1.bg.li(opt.lighten_non_text or 30) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    SpecialKey      { NonText, gui = "italic" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    Whitespace      { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    EndOfBuffer     { NonText }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

    WildMenu        { bg = p.blossom, fg = p1.bg }, -- current match in 'wildmenu' completion
    Directory       { gui = "bold" }, -- directory names (and other special names in listings)
    Question        { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    Title           { fg = p.fg, gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.


    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    --Constant        { fg = p1.fg4 }, -- (preferred) any constant
    -- Constant        { fg = p.fg }, -- (preferred) any constant
    Constant        { fg = p.yell.desaturate(60).da(15) }, -- (preferred) any constant
    -- String       { }, --   a string constant: "this is a string"
    -- Character    { }, --  a character constant: 'c', '\n'
    -- Number          { fg = p.fg }, --   a number constant: 234, 0xff
    --Number          { fg = p.fg }, --   a number constant: 234, 0xff
    Number          { fg = p.yell.desaturate(60).da(15) }, --   a number constant: 234, 0xff
    Boolean         { Number }, --  a boolean constant: TRUE, false
    -- Float        { }, --    a floating point constant: 2.3e10

    -- Identifier      { fg = p1.fg2 }, -- (preferred) any variable name
    -- Identifier      { fg = p.fg.saturate(100).hue(100) }, -- (preferred) any variable name
    Identifier      { fg = p.fg }, -- (preferred) any variable name
    -- Identifier      { fg = p.yell.desaturate(60).da(15) }, -- (preferred) any variable name
     -- Identifier      { fg = p.purp }, -- (preferred) any variable name
    -- Function        { fg = p.fg }, -- function name (also: methods for classes)
    Function        { fg = p.white }, -- function name (also: methods for classes)

    -- Statement       { fg = p.fg, gui = "bold" }, -- (preferred) any statement
    --Statement       { fg = p.wood.desaturate(40), gui = "bold" }, -- (preferred) any statement
    --Statement       { fg = p.purp.rotate(100), gui = "bold" }, -- (preferred) any statement
    Statement       { fg = p.rose.desaturate(20), gui = "bold" }, -- (preferred) any statement
    -- Conditional  { }, --  if, then, else, endif, switch, etc.
    -- Repeat       { }, --   for, do, while, etc.
    -- Label        { }, --    case, default, etc.
    -- Operator     { }, -- "sizeof", "+", "*", etc.
    -- Keyword      { }, --  any other keyword
    -- Exception    { }, --  try, catch, throw

    PreProc         { Statement }, -- (preferred) generic Preprocessor
    -- Include      { }, --  preprocessor #include
    -- Define       { }, --   preprocessor #define
    -- Macro        { }, --    same as Define
    -- PreCondit    { }, --  preprocessor #if, #else, #endif, etc.

    -- Type            { fg = p1.bg.li(58) }, -- (preferred) int, long, char, etc.
    -- Type            { fg = p.blossom.saturation(100).lightness(45) }, -- (preferred) int, long, char, etc.
    Type            { fg = p.purp }, -- (preferred) int, long, char, etc.
    --Type            { fg = p.blossom }, -- (preferred) int, long, char, etc.
    -- StorageClass { }, -- static, register, volatile, etc.
    -- Structure    { }, --  struct, union, enum, etc.
    -- Typedef      { }, --  A typedef

    -- Special         { fg = p1.fg3, gui = "bold" }, -- (preferred) any special symbol
    Special         { Statement }, -- (preferred) any special symbol
    -- SpecialChar  { }, --  special character in a constant
    -- Tag          { }, --    you can use CTRL-] on this
    Delimiter       { fg = p1.bg.li(47) }, -- character that needs attention
    SpecialComment  { Comment, gui = "NONE" }, -- special things inside a comment
    -- Debug        { }, --    debugging statements

    -- ("Ignore", below, may be invisible...)
    -- Ignore       { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Todo            { gui = "bold,underline" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText           { ColorColumn }, -- used for highlighting "text" references
    LspReferenceRead           { ColorColumn }, -- used for highlighting "read" references
    LspReferenceWrite          { ColorColumn }, -- used for highlighting "write" references
    LspCodeLens                { LineNr },

    DiagnosticError            { Error },
    DiagnosticWarn             { WarningMsg },
    DiagnosticInfo             { fg = p.water },
    DiagnosticHint             { fg = p.blossom },
    DiagnosticOk               { fg = p.leaf },
    DiagnosticDeprecated       { DiagnosticWarn },
    DiagnosticUnnecessary      { DiagnosticWarn },

    DiagnosticSignError        { SignColumn, fg = DiagnosticError.fg },
    DiagnosticSignWarn         { SignColumn, fg = DiagnosticWarn.fg },
    DiagnosticSignInfo         { SignColumn, fg = DiagnosticInfo.fg },
    DiagnosticSignHint         { SignColumn, fg = DiagnosticHint.fg },
    DiagnosticSignOk           { SignColumn, fg = DiagnosticOk.fg },

    DiagnosticVirtualTextError { DiagnosticError, bg = DiagnosticError.fg.saturation(8).lightness(p1.bg.l + 4) },
    DiagnosticVirtualTextWarn  { DiagnosticWarn, bg = DiagnosticWarn.fg.saturation(8).lightness(p1.bg.l + 4) },
    DiagnosticVirtualTextInfo  { DiagnosticInfo, bg = DiagnosticInfo.fg.saturation(8).lightness(p1.bg.l + 4) },
    DiagnosticVirtualTextHint  { DiagnosticHint, bg = DiagnosticHint.fg.saturation(8).lightness(p1.bg.l + 4) },
    DiagnosticVirtualTextOk    { DiagnosticOk, bg = DiagnosticOk.fg.saturation(8).lightness(p1.bg.l + 4) },

    DiagnosticUnderlineError   { fg = opt.colorize_diagnostic_underline_text and DiagnosticError.fg or "NONE", gui = "undercurl", sp = DiagnosticError.fg },
    DiagnosticUnderlineWarn    { fg = opt.colorize_diagnostic_underline_text and DiagnosticWarn.fg or "NONE", gui = "undercurl", sp = DiagnosticWarn.fg },
    DiagnosticUnderlineInfo    { fg = opt.colorize_diagnostic_underline_text and DiagnosticInfo.fg or "NONE", gui = "undercurl", sp = DiagnosticInfo.fg },
    DiagnosticUnderlineHint    { fg = opt.colorize_diagnostic_underline_text and DiagnosticHint.fg or "NONE", gui = "undercurl", sp = DiagnosticHint.fg },
    DiagnosticUnderlineOk      { fg = opt.colorize_diagnostic_underline_text and DiagnosticOk.fg or "NONE", gui = "undercurl", sp = DiagnosticOk.fg },

    -- Tree-sitter
    sym "@variable"                     { Identifier },
    --sym "@variable.builtin"             { Number },
    sym "@variable.builtin"             { Type },
    sym "@variable.parameter"           { sym "@variable" },
    sym "@variable.member"              { sym "@variable" },

    sym "@constant"                     { Identifier, gui = "bold" },
    sym "@constant.builtin"             { Type },
    sym "@constant.macro"               { Number },

    sym "@module"                       { Number },
    sym "@module.builtin"               { sym "@module" },
    sym "@label"                        { Statement },

    sym "@string"                       { Constant },
    sym "@string.documentation"         { sym "@string" },
    sym "@string.regexp"                { Constant },
    sym "@string.escape"                { Special },
    sym "@string.special"               { Special },
    sym "@string.special.symbol"        { Identifier },
    sym "@string.special.url"           { sym "@string.special" },
    sym "@string.special.path"          { sym "@string.special" },

    sym "@character"                    { Constant },
    sym "@character.special"            { Special },

    sym "@boolean"                      { Number },
    sym "@number"                       { Number },
    sym "@number.float"                 { sym "@number" },

    sym "@type"                         { Type },
    sym "@type.builtin"                 { sym "@type" },
    sym "@type.definition"              { sym "@type" },
    sym "@type.qualifier"               { sym "@type" },

    sym "@attribute"                    { PreProc },
    sym "@property"                     { Identifier },

    sym "@function"                     { Function },
    sym "@function.builtin"             { Special },
    sym "@function.call"                { sym "@function" },
    sym "@function.macro"               { PreProc },

    sym "@function.method"              { sym "@function" },
    sym "@function.method.call"         { sym "@function" },

    sym "@constructor"                  { Special },
    sym "@operator"                     { Statement },

    sym "@keyword.coroutine"            { Statement },
    sym "@keyword.function"             { Statement },
    sym "@keyword.operator"             { Statement },
    sym "@keyword.import"               { PreProc },
    sym "@keyword.storage"              { Type },
    sym "@keyword.repeat"               { Statement },
    sym "@keyword.return"               { Statement },
    sym "@keyword.debug"                { Special },
    sym "@keyword.exception"            { Statement },

    sym "@keyword.conditional"          { Statement },
    sym "@keyword.conditional.ternary"  { sym "@keyword.conditional" },
    sym "@keyword.directive"            { PreProc },
    sym "@keyword.directive.define"     { sym "@keyword.directive" },

    sym "@punctuation.delimiter"        { Delimiter },
    sym "@punctuation.bracket"          { Delimiter },
    sym "@punctuation.special"          { Delimiter },

    sym "@comment"                      { Comment },
    sym "@comment.documentation"        { sym "@comment" },

    sym "@comment.error"                { Error },
    sym "@comment.warning"              { WarningMsg },
    sym "@comment.todo"                 { Todo },
    sym "@comment.note"                 { DiagnosticInfo },

    sym "@markup.strong"                { Bold },
    sym "@markup.italic"                { Italic },
    sym "@markup.strikethrough"         { gui = "strikethrough" },
    sym "@markup.underline"             { Underlined },

    -- sym "@markup.heading"               { Title },
    sym "@markup.heading"               {  fg = p.blossom, gui = "bold" },

    sym "@markup.quote"                 { fg = p1.fg4 },
    sym "@markup.math"                  { Special },
    sym "@markup.environment"           { PreProc },

    sym "@markup.link"                  { Constant },
    sym "@markup.link.label"            { Special },
    sym "@markup.link.url"              { Constant },

    sym "@markup.raw"                   { Constant },
    sym "@markup.raw.block"             { sym "@markup.raw" },

    -- sym "@markup.list"                  { Special },
    sym "@markup.list"                  { fg = p.white },
    sym "@markup.list.checked"          { sym "@markup.list" },
    sym "@markup.list.unchecked"        { sym "@markup.list" },

    sym "@diff.plus"                    { fg = p.leaf },
    sym "@diff.minus"                   { fg = p.rose },
    sym "@diff.delta"                   { fg = p.water },

    sym "@tag"                          { Special },
    sym "@tag.attribute"                { sym "@property" },
    sym "@tag.delimiter"                { Delimiter },

    sym "@none"                         { },

    -- sym "@punctuation.special.markdown" { Special },
    sym "@punctuation.special.markdown" { fg = p.white },
    sym "@string.escape.markdown"       { SpecialKey },
    sym "@markup.link.markdown"         { Identifier, gui = "underline" },
    sym "@markup.italic.markdown"       { Italic },
    sym "@markup.title.markdown"        { Statement },
    sym "@markup.raw.markdown"          { Type },
    sym "@markup.link.url.markdown"     { SpecialComment },

    sym "@markup.link.vimdoc"           { Identifier, gui = "underline" },
    sym "@markup.raw.block.vimdoc"      { fg = 'NONE' },
    sym "@variable.parameter.vimdoc"    { Type },
    sym "@label.vimdoc"                 { Type, gui = "bold" },

    -- LSP Semantic Token Groups
    sym "@lsp.type.boolean"                       { sym "@boolean" },
    sym "@lsp.type.builtinType"                   { sym "@type.builtin" },
    sym "@lsp.type.comment"                       { sym "@comment" },
    sym "@lsp.type.decorator"                     { sym "@attribute" },
    sym "@lsp.type.deriveHelper"                  { sym "@attribute" },
    sym "@lsp.type.enum"                          { sym "@type" },
    sym "@lsp.type.enumMember"                    { sym "@constant" },
    sym "@lsp.type.escapeSequence"                { sym "@string.escape" },
    sym "@lsp.type.formatSpecifier"               { sym "@markup.list" },
    sym "@lsp.type.generic"                       { sym "@variable" },
    sym "@lsp.type.interface"                     { sym "@type" },
    sym "@lsp.type.keyword"                       { Statement },
    sym "@lsp.type.lifetime"                      { sym "@keyword.storage" },
    sym "@lsp.type.namespace"                     { sym "@module" },
    sym "@lsp.type.number"                        { sym "@number" },
    sym "@lsp.type.operator"                      { sym "@operator" },
    sym "@lsp.type.parameter"                     { sym "@variable.parameter" },
    sym "@lsp.type.property"                      { sym "@property" },
    sym "@lsp.type.selfKeyword"                   { sym "@variable.builtin" },
    sym "@lsp.type.selfTypeKeyword"               { sym "@variable.builtin" },
    sym "@lsp.type.string"                        { sym "@string" },
    sym "@lsp.type.typeAlias"                     { sym "@type.definition" },
    sym "@lsp.type.unresolvedReference"           { gui = "undercurl", sp = Error.fg },
    sym "@lsp.type.variable"                      { },
    sym "@lsp.typemod.class.defaultLibrary"       { sym "@type.builtin" },
    sym "@lsp.typemod.enum.defaultLibrary"        { sym "@type.builtin" },
    sym "@lsp.typemod.enumMember.defaultLibrary"  { sym "@constant.builtin" },
    sym "@lsp.typemod.function.defaultLibrary"    { sym "@function.builtin" },
    sym "@lsp.typemod.keyword.async"              { sym "@keyword.coroutine" },
    sym "@lsp.typemod.keyword.injected"           { Statement },
    sym "@lsp.typemod.macro.defaultLibrary"       { sym "@function.builtin" },
    sym "@lsp.typemod.method.defaultLibrary"      { sym "@function.builtin" },
    sym "@lsp.typemod.operator.injected"          { sym "@operator" },
    sym "@lsp.typemod.string.injected"            { sym "@string" },
    sym "@lsp.typemod.struct.defaultLibrary"      { sym "@type.builtin" },
    sym "@lsp.typemod.type.defaultLibrary"        { sym "@type" },
    sym "@lsp.typemod.typeAlias.defaultLibrary"   { sym "@type" },
    sym "@lsp.typemod.variable.callable"          { sym "@function" },
    sym "@lsp.typemod.variable.defaultLibrary"    { sym "@variable.builtin" },
    sym "@lsp.typemod.variable.injected"          { sym "@variable" },
    sym "@lsp.typemod.variable.static"            { sym "@constant" },


    -- sym "@markup.heading"             { fg = p.blossom, gui = "bold" },
    -- sym "@markup.heading.1.markdown"  { sym "@markup.heading" },
    -- sym "@markup.heading.2.markdown"  { sym "@markup.heading" },
    -- sym "@markup.heading.3.markdown"  { sym "@markup.heading" },
    -- sym "@markup.heading.4.markdown"  { sym "@markup.heading" },
    -- sym "@markup.heading.5.markdown"  { sym "@markup.heading" },
    -- sym "@markup.heading.6.markdown"  { sym "@markup.heading" },


    -- Syntax
    diffAdded                 { fg = p.leaf },
    diffRemoved               { fg = p.rose },
    diffChanged               { fg = p.water },
    diffOldFile               { fg = p.rose, gui = "italic" },
    diffNewFile               { fg = p.leaf, gui = "italic" },
    diffFile                  { fg = p.wood, gui = "bold" },
    diffLine                  { fg = p.blossom, gui = "bold" },
    diffIndexLine             { fg = p.wood },

    gitcommitOverflow         { WarningMsg },

    markdownUrl               { SpecialComment },
    markdownCode              { Type },
    markdownLinkText          { Identifier, gui = "underline" },
    markdownLinkTextDelimiter { Delimiter },

    helpHyperTextEntry        { Type, gui = "bold" },
    helpHyperTextJump         { Identifier, gui = "underline" },
    helpSpecial               { Type },
    helpOption                { Constant },

    -- Other plugins
    GitSignsAdd                      { SignColumn, fg = p.leaf },
    GitSignsChange                   { SignColumn, fg = p.water },
    GitSignsDelete                   { SignColumn, fg = p.rose },

    GitGutterAdd                     { GitSignsAdd },
    GitGutterChange                  { GitSignsChange },
    GitGutterDelete                  { GitSignsDelete },

    IblIndent                        { fg = p1.bg.li(8).de(22) },
    IblScope                         { fg = p1.bg.li(22).de(22) },

    TelescopeSelection               { CursorLine },
    TelescopeSelectionCaret          { TelescopeSelection, fg = p.rose },
    TelescopeMatching                { fg = p.blossom, gui = "bold" },
    TelescopeBorder                  { fg = FloatBorder.fg },

    Sneak                            { Search },
    SneakLabel                       { WildMenu },
    SneakLabelMask                   { bg = p.blossom, fg = p.blossom },

    LeapMatch                        { gui = "bold,underline,nocombine" },
    LeapLabelPrimary                 { Search , gui = "bold,nocombine" },
    LeapLabelSecondary               { DiffText, gui = "bold,nocombine" },
    LeapLabelSelected                { IncSearch },

    HopNextKey                       { fg = p.blossom, gui = "bold,underline" },
    HopNextKey1                      { fg = p.sky, gui = "bold,underline" },
    HopNextKey2                      { fg = p.water },
    HopUnmatched                     { fg = Comment.fg },

    BufferCurrent                    { TabLineSel },
    BufferVisible                    { fg = StatusLineNC.fg },
    BufferVisibleSign                { fg = StatusLineNC.fg },
    BufferVisibleIndex               { fg = StatusLineNC.fg },

    CocErrorSign                     { DiagnosticSignError },
    CocWarningSign                   { DiagnosticSignWarn },
    CocInfoSign                      { DiagnosticSignInfo },
    CocHintSign                      { DiagnosticSignHint },
    CocErrorHighlight                { DiagnosticUnderlineError },
    CocWarningHighlight              { DiagnosticUnderlineWarn },
    CocInfoHighlight                 { DiagnosticUnderlineInfo },
    CocHintHighlight                 { DiagnosticUnderlineHint },
    CocErrorVirtualText              { DiagnosticVirtualTextError },
    CocWarningVirtualText            { DiagnosticVirtualTextWarn },
    CocMenuSel                       { CursorLine },
    CocSelectedText                  { SpellBad },
    CocCodeLens                      { LineNr },
    CocMarkdownLink                  { fg = p.sky, gui = "underline" },
    CocSearch                        { Search },

    NeogitNotificationError          { DiagnosticError },
    NeogitNotificationWarning        { DiagnosticWarn },
    NeogitNotificationInfo           { DiagnosticInfo },

    NeogitDiffContextHighlight       { CursorLine },
    NeogitDiffDeleteHighlight        { DiffDelete },
    NeogitDiffAddHighlight           { DiffAdd },
    NeogitHunkHeader                 { LineNr },
    NeogitHunkHeaderHighlight        { CursorLine, fg = p.fg, gui = "bold" },

    WhichKey                         { Statement },
    WhichKeyGroup                    { Special },
    WhichKeySeparator                { fg = LineNr.fg },
    WhichKeyValue                    { Constant },

    TroubleNormal                    { Function },
    TroubleText                      { Function },
    TroubleSource                    { Constant },

    NvimTreeNormal                   { Normal, bg = not opt.transparent_background and p1.bg.li(3) or "NONE" },
    NvimTreeWinSeparator             (opt.transparent_background and { WinSeparator } or { fg = "bg" }),
    NvimTreeCursorLine               { bg = StatusLineNC.bg },
    NvimTreeCursorColumn             { NvimTreeCursorLine },
    NvimTreeRootFolder               { fg = p.water, gui = "bold" },
    NvimTreeSymlink                  { fg = p.water },
    NvimTreeGitDirty                 { diffChanged },
    NvimTreeGitNew                   { diffAdded },
    NvimTreeGitDeleted               { diffRemoved },
    NvimTreeSpecialFile              { fg = p.blossom, gui = "underline" },

    CmpItemAbbr                  { fg = p1.fg2 },
    CmpItemAbbrDeprecated            { fg = p1.fg6 },
    CmpItemAbbrMatch               { fg = p.fg, gui = "bold"  },
    CmpItemAbbrMatchFuzzy            { fg = p1.fg1, gui = "bold" },
    CmpItemKind                      { fg = p1.fg4 },
    CmpItemMenu                      { fg = p1.fg5 },

    NnnNormal                        { NvimTreeNormal },
    NnnNormalNC                      { NnnNormal },
    NnnWinSeparator                  { NvimTreeWinSeparator },
    NnnVertSplit                     { NnnWinSeparator },

    MasonHighlight                   { fg = p.water },
    MasonHighlightBlock        { fg = p1.bg, bg = MasonHighlight.fg },
    MasonHighlightBlockBold      { MasonHighlightBlock, gui = "bold" },
    MasonHighlightSecondary          { fg = p.wood },
    MasonHighlightBlockSecondary     { fg = p1.bg, bg = MasonHighlightSecondary.fg },
    MasonHighlightBlockBoldSecondary { MasonHighlightBlockSecondary, gui = "bold" },
    MasonMuted                       { fg = p1.fg4 },
    MasonMutedBlock                  { fg = p1.bg, bg = MasonMuted.fg },
    MasonMutedBlockBold              { MasonMutedBlock, gui = "bold" },
    MasonHeader                      { fg = p1.bg, bg = p.wood, gui = "bold" },
    MasonError                       { Error },

    NoiceCmdlineIcon                 { fg = p.water },
    NoiceCmdlineIconSearch           { WarningMsg },
    NoiceCmdlinePopupBorder          { NoiceCmdlineIcon },
    NoiceCmdlinePopupBorderSearch    { WarningMsg },
    NoiceCmdlinePopupTitle           { NoiceCmdlineIcon },
    NoiceCompletionItemKindDefault   { fg = p1.fg4 },
    NoiceConfirmBorder               { NoiceCmdlineIcon },

    FlashLabel                       { bg = p.water.lightness(p1.bg.l + 24), fg = p.fg },
    FlashBackdrop                    { fg = Comment.fg },

    NotifyERRORIcon                  { DiagnosticError },
    NotifyERRORTitle                 { DiagnosticError },
    NotifyWARNIcon                   { DiagnosticWarn },
    NotifyWARNTitle                  { DiagnosticWarn },
    NotifyINFOIcon                   { DiagnosticInfo },
    NotifyINFOTitle                  { DiagnosticInfo },
    NotifyDEBUGIcon                  { DiagnosticHint },
    NotifyDEBUGTitle                 { DiagnosticHint },
    NotifyTRACEIcon                  { DiagnosticHint },
    NotifyTRACETitle                 { DiagnosticHint },
  }





end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
