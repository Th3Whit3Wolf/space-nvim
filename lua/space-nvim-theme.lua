-- Name:         Space Nvim Theme
-- Description:  Light and dark theme inspired by spacemacs-theme
-- Author:       Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Maintainer:   Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Website:      https://github.com/Th3Whit3Wolf/space-nvim-theme
-- License:      Vim License (see `:help license`)
vim.g.colors_name = 'space-nvim-theme'
-- Highlight Function And Color definitons
local function highlight(group, styles)
    local style = styles.style and 'gui=' .. styles.style or 'gui=NONE'
    local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg)
end

if vim.o.background == 'dark' then
    -- Dark Colors
    bg0 = '#292b2e'
    bg1 = '#212026'
    bg2 = '#100a14'
    bg3 = '#0a0814'
    bg4 = '#34323e'
    fg0 = '#cdcdcd'
    fg1 = '#b2b2b2'
    fg2 = '#8e8e8e'
    fg3 = '#727272'
    fg4 = '#5b5b5b'
    fg5 = '#9a9aba'
    fg6 = '#5e5079'
    fg7 = '#666666'
    grey = '#44505c'
    grey1 = '#768294'
    red1 = '#ce537a'
    blue1 = '#7590db'
    purple0 = '#bc6ec5'
    purple1 = '#d698fe'
    purple2 = '#a45bad'
    purple3 = '#5d4d7a'
    purple4 = '#34323e'
    aqua0 = '#2d9574'
    orange0 = '#e18254'
    cyan = '#28def0'
    mat = '#86dc2f'
    meta = '#9f8766'
    spacelight = '#444155' -- highlight seems to be an illegal keyword here
    comp = '#c56ec3'
    cblk = '#cbc1d5'

    -- Terminal Colors
    vim.g.terminal_color_0 = '#292b2e'
    vim.g.terminal_color_8 = '#44505c'
    vim.g.terminal_color_12 = '#4f97d7'
    vim.g.terminal_color_13 = '#bc6ec5'
    vim.g.terminal_color_14 = '#2d9574'
    vim.g.terminal_color_7 = '#5b5b5b'
    vim.g.terminal_color_15 = '#b2b2b2'
else
    -- Light Colors
    bg0 = '#fbf8ef'
    bg1 = '#efeae9'
    bg2 = '#e3dedd'
    bg3 = '#d2ceda'
    bg4 = '#a8a4ae'
    fg0 = '#83758c'
    fg1 = '#655370'
    fg2 = '#5a4a64'
    fg3 = '#504259'
    fg4 = '#463a4e'
    fg5 = '#8c799f'
    fg6 = '#c8c6dd'
    grey = '#a8a8bf'
    grey1 = '#768294'
    red1 = '#ba2f59'
    blue1 = '#715ab1'
    purple0 = '#6c3163'
    purple1 = '#86589e'
    purple2 = '#4e3163'
    purple3 = '#d3d3e7'
    purple4 = '#e2e0ea'
    aqua0 = '#24775c'
    orange0 = '#b46843'
    cyan = '#21b8c7'
    mat = '#ba2f59'
    meta = '#da8b55'
    spacelight = '#d3d3e7' -- highlight seems to be an illegal keyword here
    comp = '#6c4173'
    cblk = '#655370'

    -- Terminal Colors
    vim.g.terminal_color_0 = '#fbf8ef'
    vim.g.terminal_color_8 = '#a8a8bf'
    vim.g.terminal_color_12 = '#3a81c3'
    vim.g.terminal_color_13 = '#6c3163'
    vim.g.terminal_color_14 = '#24775c'
    vim.g.terminal_color_7 = '#463a4e'
    vim.g.terminal_color_15 = '#655370'
end

-------------------
-- Common Colors --
-------------------

red = '#f2241f'
red0 = '#f54e3c'
blue = '#58b0d9'
blue0 = '#4f97d7'
purple = '#544a65'
green = '#67b11d'
green0 = '#2aa1ae'
aqua = '#4495b4'
orange = '#d79650'
yellow = '#b1951d'
yellow1 = '#e5d11c'
war = '#dc752f'
number = '#e697e6'
debug = '#ffc8c8'
float = '#b7b7ff'
delim = '#74baac'

----------------------------
-- Common Terminal Colors --
----------------------------

vim.g.terminal_color_1 = '#d26487'
vim.g.terminal_color_2 = '#35a8a5'
vim.g.terminal_color_3 = '#b89f33'
vim.g.terminal_color_4 = '#6981c5'
vim.g.terminal_color_5 = '#a15ea7'
vim.g.terminal_color_6 = '#288668'
vim.g.terminal_color_9 = '#f2241f'
vim.g.terminal_color_10 = '#67b11d'
vim.g.terminal_color_11 = '#b1951d'

local syntax = {
    -------------------------------------------------------------
    -- Syntax Groups (descriptions and ordering from `:h w18`) --
    -------------------------------------------------------------

    Comment = {fg = green0, bg = bg0, style = 'italic'}, -- any comment
    Constant = {fg = green0, bg = bg0}, -- any constant
    String = {fg = aqua0, bg = bg0, style = 'italic'}, -- this is a string
    Character = {fg = purple0, bg = bg0}, -- a character constant: 'c', '\n'
    Boolean = {fg = war, bg = bg0}, -- a boolean constant: TRUE, false
    Float = {fg = float, bg = bg0}, -- a floating point constant: 2.3e10
    Identifier = {fg = blue1, bg = bg0}, -- any variable name
    Function = {fg = purple0, bg = bg0, style = 'bold'}, -- function name (also: methods for classes)
    Statement = {fg = blue0, bg = bg0}, -- any statement
    Conditional = {fg = blue0, bg = bg0, style = 'bold'}, -- if, then, else, endif, switch, etc.
    Repeat = {fg = red1, bg = bg0, style = 'bold'}, -- for, do, while, etc.
    Label = {fg = red1, bg = bg0}, -- case, default, etc.
    Operator = {fg = blue, bg = bg0}, -- sizeof", "+", "*", etc.
    Keyword = {fg = blue0, bg = bg0, style = 'bold'}, -- any other keyword
    Exception = {fg = red, bg = bg0}, -- try, catch, throw
    PreProc = {fg = purple1, bg = bg0}, -- generic Preprocessor
    Include = {fg = yellow, bg = bg0}, -- preprocessor #include
    Define = {fg = aqua0, bg = bg0}, -- preprocessor #define
    Macro = {fg = blue1, bg = bg0, style = 'bold'}, -- same as Define
    PreCondit = {fg = purple2, bg = bg0}, -- preprocessor #if, #else, #endif, etc.
    Type = {fg = red1, bg = bg0}, -- int, long, char, etc.
    StorageClass = {fg = yellow, bg = bg0, style = 'bold'}, -- static, register, volatile, etc.
    Structure = {fg = aqua, bg = bg0, style = 'bold'}, -- struct, union, enum, etc.
    Typedef = {fg = yellow, bg = bg0}, -- A typedef
    Special = {fg = orange, bg = bg0, style = 'italic'}, -- any special symbol
    SpecialChar = {fg = cyan, bg = bg0}, -- special character in a constant
    Tag = {fg = orange0, bg = bg0}, -- you can use CTRL-] on this
    Delimiter = {fg = delim, bg = bg0}, -- character that needs attention
    SpecialComment = {fg = grey1, bg = bg0}, -- special things inside a comment
    Debug = {fg = red0, bg = bg0}, -- debugging statements
    Underlined = {fg = blue0, bg = bg0, style = 'underline'}, -- text that stands out, HTML links
    Ignore = {fg = float, bg = bg0}, -- left blank, hidden
    Error = {fg = red, bg = bg0, style = 'bold,reverse'}, -- any erroneous construct
    Todo = {fg = orange0, bg = bg0, style = 'bold,italic'}, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    --------------------------------------------------------------------------------
    -- Highlighting Groups (descriptions and ordering from `:h highlight-groups`) --
    --------------------------------------------------------------------------------

    ColorColumn = {fg = fg0, bg = bg1}, --  used for the columns set with 'colorcolumn'
    Conceal = {fg = blue0, bg = bg0}, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = {fg = orange0, bg = bg0, style = 'bold,reverse'}, -- the character under the cursor
    CursorIM = {fg = fg0, bg = bg0, style = 'reverse'}, -- like Cursor, but used when in IME mode
    Directory = {fg = blue0, bg = bg0, style = 'bold'}, -- directory names (and other special names in listings)
    DiffAdd = {fg = green, bg = bg0, style = 'reverse'}, -- diff mode: Added line
    DiffChange = {fg = orange0, bg = bg0, style = 'reverse'}, --  diff mode: Changed line
    DiffDelete = {fg = red, bg = bg0, style = 'reverse'}, -- diff mode: Deleted line
    DiffText = {fg = yellow, bg = bg0, style = 'reverse'}, -- diff mode: Changed text within a changed line
    EndOfBuffer = {fg = bg0, bg = bg0}, -- filler lines (~) after the last line in the buffer
    ErrorMsg = {fg = bg0, bg = bg1}, -- error messages on the command line
    VertSplit = {fg = bg1, bg = bg0}, -- the column separating verti-- cally split windows
    Folded = {fg = purple2, bg = bg1, style = 'italic'}, -- line used for closed folds
    FoldColumn = {fg = purple0, bg = bg0}, -- 'foldcolumn'
    SignColumn = {fg = fg1, bg = bg0}, -- column where signs are displayed
    IncSearch = {fg = orange0, bg = bg0, style = 'bold,reverse'}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    LineNr = {fg = grey, bg = bg0}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = {fg = purple0, bg = bg0}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = {fg = green, bg = bg0, style = 'bold,underline'}, -- The character under the cursor or just before it, if it is a paired bracket, and its match.
    ModeMsg = {fg = yellow1, bg = bg0}, -- 'showmode' message (e.g., "-- INSERT --")
    MoreMsg = {fg = yellow1, bg = bg0}, -- more-prompt
    NonText = {fg = grey, bg = bg0}, -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    Normal = {fg = fg1, bg = bg0}, -- normal text
    Pmenu = {fg = fg5, bg = purple4}, -- Popup menu: normal item.
    PmenuSel = {fg = fg0, bg = fg6}, -- Popup menu: selected item.
    PmenuSbar = {fg = fg0, bg = bg1}, -- Popup menu: scrollbar.
    PmenuThumb = {fg = fg0, bg = purple3}, -- Popup menu: Thumb of the scrollbar.
    Question = {fg = orange0, bg = bg0, style = 'bold'}, -- hit-enter prompt and yes/no questions
    QuickFixLine = {fg = green, bg = bg0, style = 'bold,reverse'}, -- Current quickfix item in the quickfix window.
    qfLineNr = {fg = red1, bg = bg0},
    Search = {fg = green, bg = bg0, style = 'bold,reverse'}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey = {fg = purple0, bg = bg0}, -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
    SpellBad = {fg = red, bg = bg0, style = 'italic,undercurl'}, -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
    SpellCap = {fg = blue0, bg = bg0, style = 'italic,undercurl'}, -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
    SpellLocal = {fg = aqua0, bg = bg0, style = 'italic,undercurl'}, -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
    SpellRare = {fg = purple0, bg = bg0, style = 'italic,undercurl'}, -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
    StatusLine = {fg = fg1, bg = purple3}, -- status line of current window
    StatusLineNC = {fg = purple3, bg = purple4}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineTerm = {fg = fg1, bg = purple3}, -- status line of current :terminal window
    StatusLineTermNC = {fg = purple3, bg = purple4}, -- status line of non-current :terminal window
    TabLineFill = {fg = purple, bg = bg1},
    TabLineSel = {fg = green, bg = bg1},
    TabLine = {fg = purple, bg = bg1},
    Title = {fg = green, bg = bg0, style = 'bold'}, -- titles for output from ":set all", ":autocmd" etc.
    Visual = {fg = fg0, bg = purple}, -- Visual mode selection
    VisualNOS = {fg = fg0, bg = purple}, -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
    WarningMsg = {fg = red, bg = bg0}, --  warning messages
    WildMenu = {fg = orange0, bg = bg1, style = 'bold'}, --  current match in 'wildmenu' completion

    --------------------------------
    -- Miscellaneous Highlighting --
    --------------------------------

    CursorColumn = {fg = fg0, bg = bg1},
    CursorLine = {fg = fg0, bg = bg1},
    ToolbarLine = {fg = fg0, bg = bg3},
    ToolbarButton = {fg = fg0, bg = bg3, style = 'bold'},
    NormalMode = {fg = fg4, bg = bg0, style = 'reverse'},
    InsertMode = {fg = blue0, bg = bg0, style = 'reverse'},
    ReplaceMode = {fg = aqua0, bg = bg0, style = 'reverse'},
    VisualMode = {fg = orange0, bg = bg0, style = 'reverse'},
    CommandMode = {fg = purple0, bg = bg0, style = 'reverse'},
    Warnings = {fg = orange0, bg = bg0, style = 'reverse'},

    ------------------------------------
    -- Language-Specific Highlighting --
    ------------------------------------

    -- C
    cOperator = {fg = purple0, bg = bg0},
    cStructure = {fg = orange0, bg = bg0},
    -- CoffeeScript
    coffeeExtendedOp = {fg = fg3, bg = bg0},
    coffeeSpecialOp = {fg = fg3, bg = bg0},
    coffeeCurly = {fg = orange0, bg = bg0},
    coffeeParen = {fg = fg3, bg = bg0},
    coffeeBracket = {fg = orange0, bg = bg0},
    -- Clojure
    clojureKeyword = {fg = blue0, bg = bg0},
    clojureCond = {fg = orange0, bg = bg0},
    clojureSpecial = {fg = orange0, bg = bg0},
    clojureDefine = {fg = orange0, bg = bg0},
    clojureFunc = {fg = yellow, bg = bg0},
    clojureRepeat = {fg = yellow, bg = bg0},
    clojureCharacter = {fg = aqua0, bg = bg0},
    clojureStringEscape = {fg = aqua0, bg = bg0},
    clojureException = {fg = red, bg = bg0},
    clojureRegexp = {fg = aqua0, bg = bg0},
    clojureRegexpEscape = {fg = aqua0, bg = bg0},
    clojureRegexpCharClass = {fg = fg3, bg = bg0, style = 'bold'},
    clojureRegexpMod = {fg = fg3, bg = bg0, style = 'bold'},
    clojureRegexpQuantifier = {fg = fg3, bg = bg0, style = 'bold'},
    clojureParen = {fg = fg3, bg = bg0},
    clojureAnonArg = {fg = yellow, bg = bg0},
    clojureVariable = {fg = blue0, bg = bg0},
    clojureMacro = {fg = orange0, bg = bg0},
    clojureMeta = {fg = yellow, bg = bg0},
    clojureDeref = {fg = yellow, bg = bg0},
    clojureQuote = {fg = yellow, bg = bg0},
    clojureUnquote = {fg = yellow, bg = bg0},
    -- CSS
    cssBraces = {fg = blue0, bg = bg0},
    cssFunctionName = {fg = yellow, bg = bg0},
    cssIdentifier = {fg = orange0, bg = bg0},
    cssClassName = {fg = green, bg = bg0},
    cssColor = {fg = blue0, bg = bg0},
    cssSelectorOp = {fg = blue0, bg = bg0},
    cssSelectorOp2 = {fg = blue0, bg = bg0},
    cssImportant = {fg = green, bg = bg0},
    cssVendor = {fg = fg1, bg = bg0},
    cssTextProp = {fg = aqua0, bg = bg0},
    cssAnimationProp = {fg = aqua0, bg = bg0},
    cssUIProp = {fg = yellow, bg = bg0},
    cssTransformProp = {fg = aqua0, bg = bg0},
    cssTransitionProp = {fg = aqua0, bg = bg0},
    cssPrintProp = {fg = aqua0, bg = bg0},
    cssPositioningProp = {fg = yellow, bg = bg0},
    cssBoxProp = {fg = aqua0, bg = bg0},
    cssFontDescriptorProp = {fg = aqua0, bg = bg0},
    cssFlexibleBoxProp = {fg = aqua0, bg = bg0},
    cssBorderOutlineProp = {fg = aqua0, bg = bg0},
    cssBackgroundProp = {fg = aqua0, bg = bg0},
    cssMarginProp = {fg = aqua0, bg = bg0},
    cssListProp = {fg = aqua0, bg = bg0},
    cssTableProp = {fg = aqua0, bg = bg0},
    cssFontProp = {fg = aqua0, bg = bg0},
    cssPaddingProp = {fg = aqua0, bg = bg0},
    cssDimensionProp = {fg = aqua0, bg = bg0},
    cssRenderProp = {fg = aqua0, bg = bg0},
    cssColorProp = {fg = aqua0, bg = bg0},
    cssGeneratedContentProp = {fg = aqua0, bg = bg0},
    -- DTD
    dtdFunction = {fg = grey, bg = bg0},
    dtdTagName = {fg = purple0, bg = bg0},
    dtdParamEntityPunct = {fg = grey, bg = bg0},
    dtdParamEntityDPunct = {fg = grey, bg = bg0},
    -- Diff
    diffAdded = {fg = green, bg = bg0},
    diffRemoved = {fg = red, bg = bg0},
    diffChanged = {fg = aqua0, bg = bg0},
    diffFile = {fg = orange0, bg = bg0},
    diffNewFile = {fg = yellow, bg = bg0},
    diffLine = {fg = blue0, bg = bg0},
    -- Elixir
    elixirDocString = {fg = green0, bg = bg0, style = 'italic'},
    elixirStringDelimiter = {fg = green, bg = bg0},
    elixirInterpolationDelimiter = {fg = aqua0, bg = bg0},
    elixirModuleDeclaration = {fg = yellow, bg = bg0},
    -- Go
    goDirective = {fg = aqua0, bg = bg0},
    goConstants = {fg = purple0, bg = bg0},
    goDeclaration = {fg = blue0, bg = bg0, style = 'bold'},
    goDeclType = {fg = blue0, bg = bg0},
    goBuiltins = {fg = orange0, bg = bg0},
    -- Haskell
    haskellType = {fg = fg1, bg = bg0},
    haskellIdentifier = {fg = fg1, bg = bg0},
    haskellSeparator = {fg = fg1, bg = bg0},
    haskellDelimiter = {fg = fg4, bg = bg0},
    haskellOperators = {fg = blue0, bg = bg0},
    haskellBacktick = {fg = orange0, bg = bg0},
    haskellStatement = {fg = orange0, bg = bg0},
    haskellConditional = {fg = orange0, bg = bg0},
    haskellLet = {fg = aqua0, bg = bg0},
    haskellDefault = {fg = aqua0, bg = bg0},
    haskellWhere = {fg = aqua0, bg = bg0},
    haskellBottom = {fg = aqua0, bg = bg0},
    haskellBlockKeywords = {fg = aqua0, bg = bg0},
    haskellImportKeywords = {fg = aqua0, bg = bg0},
    haskellDeclKeyword = {fg = aqua0, bg = bg0},
    haskellDeriving = {fg = aqua0, bg = bg0},
    haskellAssocType = {fg = aqua0, bg = bg0},
    haskellNumber = {fg = purple0, bg = bg0},
    haskellPragma = {fg = purple0, bg = bg0},
    haskellString = {fg = green, bg = bg0},
    haskellChar = {fg = green, bg = bg0},
    -- HTML (keep consistent with Markdown, below)
    htmlTag = {fg = blue0, bg = bg0},
    htmlEndTag = {fg = blue0, bg = bg0},
    htmlTagName = {fg = purple2, bg = bg0},
    htmlArg = {fg = aqua0, bg = bg0},
    htmlScriptTag = {fg = purple0, bg = bg0},
    htmlTagN = {fg = fg1, bg = bg0},
    htmlSpecialTagName = {fg = aqua0, bg = bg0, style = 'bold'},
    htmlLink = {fg = blue0, bg = bg0, style = 'underline'},
    htmlSpecialChar = {fg = orange0, bg = bg0},
    htmlBold = {fg = fg0, bg = bg0, style = 'bold'},
    htmlBoldUnderline = {fg = fg0, bg = bg0, style = 'bold,underline'},
    htmlBoldItalic = {fg = fg0, bg = bg0, style = 'bold,italic'},
    htmlBoldUnderlineItalic = {
        fg = fg0,
        bg = bg0,
        style = 'bold,italic,underline'
    },
    htmlUnderline = {fg = fg0, bg = bg0, style = 'underline'},
    htmlUnderlineItalic = {fg = fg0, bg = bg0, style = 'italic,underline'},
    htmlItalic = {fg = blue1, bg = bg0, style = 'italic'},
    htmlH1 = {fg = blue0, bg = bg0, style = 'bold'},
    htmlH2 = {fg = aqua0, bg = bg0, style = 'bold'},
    htmlH3 = {fg = green, bg = bg0, style = 'bold'},
    htmlH4 = {fg = yellow, bg = bg0, style = 'bold'},
    htmlH5 = {fg = yellow, bg = bg0},
    htmlH6 = {fg = yellow, bg = bg0},
    -- Java
    javaAnnotation = {fg = blue0, bg = bg0},
    javaDocTags = {fg = aqua0, bg = bg0},
    javaCommentTitle = {fg = blue1, bg = bg0, style = 'bold'},
    javaParen = {fg = fg3, bg = bg0},
    javaParen1 = {fg = fg3, bg = bg0},
    javaParen2 = {fg = fg3, bg = bg0},
    javaParen3 = {fg = fg3, bg = bg0},
    javaParen4 = {fg = fg3, bg = bg0},
    javaParen5 = {fg = fg3, bg = bg0},
    javaOperator = {fg = orange0, bg = bg0},
    javaVarArg = {fg = green, bg = bg0},
    -- JavaScript
    javaScriptBraces = {fg = fg1, bg = bg0},
    javaScriptFunction = {fg = aqua0, bg = bg0},
    javaScriptIdentifier = {fg = red, bg = bg0},
    javaScriptMember = {fg = blue0, bg = bg0},
    javaScriptNumber = {fg = purple0, bg = bg0},
    javaScriptNull = {fg = purple0, bg = bg0},
    javaScriptParens = {fg = fg3, bg = bg0},
    javascriptImport = {fg = aqua0, bg = bg0},
    javascriptExport = {fg = aqua0, bg = bg0},
    javascriptClassKeyword = {fg = aqua0, bg = bg0},
    javascriptClassExtends = {fg = aqua0, bg = bg0},
    javascriptDefault = {fg = aqua0, bg = bg0},
    javascriptClassName = {fg = yellow, bg = bg0},
    javascriptClassSuperName = {fg = yellow, bg = bg0},
    javascriptGlobal = {fg = yellow, bg = bg0},
    javascriptEndColons = {fg = fg1, bg = bg0},
    javascriptFuncArg = {fg = fg1, bg = bg0},
    javascriptGlobalMethod = {fg = fg1, bg = bg0},
    javascriptNodeGlobal = {fg = fg1, bg = bg0},
    javascriptBOMWindowProp = {fg = fg1, bg = bg0},
    javascriptArrayMethod = {fg = fg1, bg = bg0},
    javascriptArrayStaticMethod = {fg = fg1, bg = bg0},
    javascriptCacheMethod = {fg = fg1, bg = bg0},
    javascriptDateMethod = {fg = fg1, bg = bg0},
    javascriptMathStaticMethod = {fg = fg1, bg = bg0},
    javascriptURLUtilsProp = {fg = fg1, bg = bg0},
    javascriptBOMNavigatorProp = {fg = fg1, bg = bg0},
    javascriptDOMDocMethod = {fg = fg1, bg = bg0},
    javascriptDOMDocProp = {fg = fg1, bg = bg0},
    javascriptBOMLocationMethod = {fg = fg1, bg = bg0},
    javascriptBOMWindowMethod = {fg = fg1, bg = bg0},
    javascriptStringMethod = {fg = fg1, bg = bg0},
    javascriptVariable = {fg = orange0, bg = bg0},
    javascriptIdentifier = {fg = orange0, bg = bg0},
    javascriptClassSuper = {fg = orange0, bg = bg0},
    javascriptFuncKeyword = {fg = aqua0, bg = bg0},
    javascriptAsyncFunc = {fg = aqua0, bg = bg0},
    javascriptClassStatic = {fg = orange0, bg = bg0},
    javascriptOperator = {fg = red1, bg = bg0},
    javascriptForOperator = {fg = red1, bg = bg0},
    javascriptYield = {fg = red1, bg = bg0},
    javascriptExceptions = {fg = red1, bg = bg0},
    javascriptMessage = {fg = red1, bg = bg0},
    javascriptTemplateSB = {fg = aqua0, bg = bg0},
    javascriptTemplateSubstitution = {fg = fg1, bg = bg0},
    javascriptLabel = {fg = fg1, bg = bg0},
    javascriptObjectLabel = {fg = fg1, bg = bg0},
    javascriptPropertyName = {fg = fg1, bg = bg0},
    javascriptLogicSymbols = {fg = fg1, bg = bg0},
    javascriptArrowFunc = {fg = yellow, bg = bg0},
    javascriptDocParamName = {fg = fg4, bg = bg0},
    javascriptDocTags = {fg = fg4, bg = bg0},
    javascriptDocNotation = {fg = fg4, bg = bg0},
    javascriptDocParamType = {fg = fg4, bg = bg0},
    javascriptDocNamedParamType = {fg = fg4, bg = bg0},
    javascriptBrackets = {fg = fg1, bg = bg0},
    javascriptDOMElemAttrs = {fg = fg1, bg = bg0},
    javascriptDOMEventMethod = {fg = fg1, bg = bg0},
    javascriptDOMNodeMethod = {fg = fg1, bg = bg0},
    javascriptDOMStorageMethod = {fg = fg1, bg = bg0},
    javascriptHeadersMethod = {fg = fg1, bg = bg0},
    javascriptAsyncFuncKeyword = {fg = red1, bg = bg0, style = 'bold'},
    javascriptAwaitFuncKeyword = {fg = red1, bg = bg0, style = 'bold'},
    jsClassKeyword = {fg = blue0, bg = bg0, style = 'bold'},
    jsExtendsKeyword = {fg = blue0, bg = bg0, style = 'bold'},
    jsExportDefault = {fg = blue0, bg = bg0, style = 'bold'},
    jsTemplateBraces = {fg = aqua0, bg = bg0},
    jsGlobalNodeObjects = {fg = blue0, bg = bg0, style = 'bold'},
    jsGlobalObjects = {fg = blue0, bg = bg0, style = 'bold'},
    jsFunction = {fg = purple0, bg = bg0, style = 'bold'},
    jsFuncParens = {fg = orange0, bg = bg0},
    jsParens = {fg = red1, bg = bg0},
    jsNull = {fg = purple0, bg = bg0},
    jsUndefined = {fg = bg0, bg = bg1},
    jsClassDefinition = {fg = yellow, bg = bg0},
    jsObjectProp = {fg = blue1, bg = bg0},
    jsObjectKey = {fg = blue, bg = bg0},
    jsFunctionKey = {fg = blue1, bg = bg0},
    jsBracket = {fg = red1, bg = bg0},
    jsObjectColon = {fg = red1, bg = bg0},
    jsFuncArgs = {fg = blue, bg = bg0},
    jsFuncBraces = {fg = blue1, bg = bg0},
    jsVariableDef = {fg = fg1, bg = bg0},
    jsObjectBraces = {fg = orange, bg = bg0, style = 'italic'},
    jsObjectValue = {fg = float, bg = bg0},
    jsClassBlock = {fg = blue1, bg = bg0},
    jsFutureKeys = {fg = orange0, bg = bg0, style = 'bold'},
    jsStorageClass = {fg = blue0, bg = bg0},
    jsxRegion = {fg = blue0, bg = bg0},
    -- JSON
    jsonKeyword = {fg = green, bg = bg0},
    jsonQuote = {fg = green, bg = bg0},
    jsonBraces = {fg = fg1, bg = bg0},
    jsonString = {fg = fg1, bg = bg0},
    -- Lua
    luaIn = {fg = red1, bg = bg0},
    luaFunction = {fg = aqua0, bg = bg0},
    luaTable = {fg = orange0, bg = bg0},
    -- Markdown (keep consistent with HTML, above
    markdownItalic = {fg = fg3, bg = bg0, style = 'italic'},
    markdownH1 = {fg = blue0, bg = bg0, style = 'bold'},
    markdownH2 = {fg = aqua0, bg = bg0, style = 'bold'},
    markdownH3 = {fg = green, bg = bg0, style = 'bold'},
    markdownH4 = {fg = yellow, bg = bg0, style = 'bold'},
    markdownH5 = {fg = yellow, bg = bg0},
    markdownH6 = {fg = yellow, bg = bg0},
    markdownCode = {fg = purple2, bg = bg0},
    mkdCode = {fg = purple2, bg = bg0},
    markdownCodeBlock = {fg = aqua0, bg = bg0},
    markdownCodeDelimiter = {fg = orange0, bg = bg0},
    mkdCodeDelimiter = {fg = orange0, bg = bg0},
    markdownBlockquote = {fg = grey, bg = bg0},
    markdownListMarker = {fg = grey, bg = bg0},
    markdownOrderedListMarker = {fg = grey, bg = bg0},
    markdownRule = {fg = grey, bg = NONE},
    markdownHeadingRule = {fg = grey, bg = bg0},
    markdownUrlDelimiter = {fg = fg3, bg = bg0},
    markdownLinkDelimiter = {fg = fg3, bg = bg0},
    markdownLinkTextDelimiter = {fg = fg3, bg = bg0},
    markdownHeadingDelimiter = {fg = orange0, bg = bg0},
    markdownUrl = {fg = purple0, bg = bg0},
    markdownUrlTitleDelimiter = {fg = green, bg = bg0},
    markdownLinkText = {fg = blue0, bg = bg0, style = 'underline'},
    markdownIdDeclaration = {fg = blue0, bg = bg0, style = 'underline'},
    -- MoonScript
    moonSpecialOp = {fg = fg3, bg = bg0},
    moonExtendedOp = {fg = fg3, bg = bg0},
    moonFunction = {fg = fg3, bg = bg0},
    moonObject = {fg = yellow, bg = bg0},
    -- Objective-C
    objcTypeModifier = {fg = red, bg = bg0},
    objcDirective = {fg = blue0, bg = bg0},
    -- PureScript
    purescriptModuleKeyword = {fg = aqua0, bg = bg0},
    purescriptModuleName = {fg = red1, bg = bg0, style = 'bold'},
    purescriptWhere = {fg = aqua0, bg = bg0},
    purescriptDelimiter = {fg = fg4, bg = bg0},
    purescriptType = {fg = red1, bg = bg0},
    purescriptImportKeyword = {fg = blue0, bg = bg0, style = 'bold'},
    purescriptHidingKeyword = {fg = blue0, bg = bg0, style = 'bold'},
    purescriptAsKeyword = {fg = blue0, bg = bg0, style = 'bold'},
    purescriptStructure = {fg = aqua, bg = bg0, style = 'bold'},
    purescriptOperator = {fg = blue, bg = bg0},
    purescriptTypeVar = {fg = red1, bg = bg0},
    purescriptConstructor = {fg = purple0, bg = bg0, style = 'bold'},
    purescriptFunction = {fg = purple0, bg = bg0, style = 'bold'},
    purescriptConditional = {fg = blue0, bg = bg0, style = 'bold'},
    purescriptBacktick = {fg = orange0, bg = bg0},
    -- Python
    pythonCoding = {fg = green0, bg = bg0, style = 'italic'},
    -- Ruby
    rubyStringDelimiter = {fg = green, bg = bg0},
    rubyInterpolationDelimiter = {fg = aqua0, bg = bg0},
    -- Rust
    rustSelf = {fg = blue0, bg = bg0, style = 'bold'},
    rustPanic = {fg = red1, bg = bg0, style = 'bold'},
    rustAssert = {fg = blue1, bg = bg0, style = 'bold'},
    -- Scala
    scalaNameDefinition = {fg = fg1, bg = bg0},
    scalaCaseFollowing = {fg = fg1, bg = bg0},
    scalaCapitalWord = {fg = fg1, bg = bg0},
    scalaTypeExtension = {fg = fg1, bg = bg0},
    scalaKeyword = {fg = red1, bg = bg0, style = 'bold'},
    scalaKeywordModifier = {fg = red1, bg = bg0},
    scalaSpecial = {fg = aqua0, bg = bg0},
    scalaOperator = {fg = fg1, bg = bg0},
    scalaTypeDeclaration = {fg = yellow, bg = bg0},
    scalaTypeTypePostDeclaration = {fg = yellow, bg = bg0},
    scalaInstanceDeclaration = {fg = fg1, bg = bg0},
    scalaInterpolation = {fg = aqua0, bg = bg0},
    -- TypeScript
    typeScriptReserved = {fg = aqua0, bg = bg0},
    typeScriptLabel = {fg = red1, bg = bg0},
    typeScriptFuncKeyword = {fg = purple0, bg = bg0, style = 'bold'},
    typeScriptIdentifier = {fg = blue1, bg = bg0},
    typeScriptBraces = {fg = red1, bg = bg0},
    typeScriptEndColons = {fg = fg1, bg = bg0},
    typeScriptDOMObjects = {fg = fg1, bg = bg0},
    typeScriptAjaxMethods = {fg = purple0, bg = bg0, style = 'bold'},
    typeScriptLogicSymbols = {fg = fg1, bg = bg0},
    typeScriptDocSeeTag = {fg = green0, bg = bg0, style = 'italic'},
    typeScriptDocParam = {fg = green0, bg = bg0, style = 'italic'},
    typeScriptDocTags = {fg = blue1, bg = bg0, style = 'bold'},
    typeScriptGlobalObjects = {fg = blue0, bg = bg0, style = 'bold'},
    typeScriptParens = {fg = blue1, bg = bg0},
    typeScriptOpSymbols = {fg = blue, bg = bg0},
    typeScriptHtmlElemProperties = {fg = orange, bg = bg0, style = 'italic'},
    typeScriptNull = {fg = purple0, bg = bg0, style = 'bold'},
    typeScriptInterpolationDelimiter = {fg = aqua0, bg = bg0},
    -- XML
    xmlTag = {fg = blue0, bg = bg0},
    xmlEndTag = {fg = blue0, bg = bg0},
    xmlTagName = {fg = blue0, bg = bg0},
    xmlEqual = {fg = blue0, bg = bg0},
    docbkKeyword = {fg = aqua0, bg = bg0, style = 'bold'},
    xmlDocTypeDecl = {fg = grey, bg = bg0},
    xmlDocTypeKeyword = {fg = purple0, bg = bg0},
    xmlCdataStart = {fg = grey, bg = bg0},
    xmlCdataCdata = {fg = purple0, bg = bg0},
    xmlAttrib = {fg = aqua0, bg = bg0},
    xmlProcessingDelim = {fg = grey, bg = bg0},
    xmlAttribPunct = {fg = grey, bg = bg0},
    xmlEntity = {fg = orange0, bg = bg0},
    xmlEntityPunct = {fg = orange0, bg = bg0},
    -- Vim
    vimCommentTitle = {fg = blue1, bg = bg0, style = 'bold'},
    vimNotation = {fg = orange0, bg = bg0},
    vimBracket = {fg = orange0, bg = bg0},
    vimMapModKey = {fg = orange0, bg = bg0},
    vimCommand = {fg = blue0, bg = bg0, style = 'bold'},
    vimLet = {fg = blue0, bg = bg0},
    vimNorm = {fg = blue0, bg = bg0},
    vimFuncSID = {fg = purple0, bg = bg0, style = 'bold'},
    vimFunction = {fg = purple0, bg = bg0, style = 'bold'},
    vimGroup = {fg = blue1, bg = bg0},
    vimHiGroup = {fg = red1, bg = bg0},
    vimSetSep = {fg = fg3, bg = bg0},
    vimSep = {fg = fg3, bg = bg0},
    vimContinue = {fg = yellow, bg = bg0},

    -------------------------
    -- Plugin Highlighting --
    -------------------------

    -- ALE (dense-analysis/ale) 
    ALEError = {fg = fg0, bg = bg0, style = 'undercurl'},
    ALEWarning = {fg = fg0, bg = bg0, style = 'undercurl'},
    ALEInfo = {fg = fg0, bg = bg0, style = 'undercurl'},
    ALEErrorSign = {fg = red, bg = bg0},
    ALEWarningSign = {fg = yellow, bg = bg0},
    ALEInfoSign = {fg = blue0, bg = bg0},
    -- Buftabline (ap/vim-buftabline)
    BufTabLineCurrent = {fg = bg0, bg = fg4},
    BufTabLineActive = {fg = fg4, bg = bg2},
    BufTabLineHidden = {fg = purple4, bg = bg1},
    BufTabLineFill = {fg = bg0, bg = bg0},
    -- Crates (mhinz/vim-crates)
    Crates = {fg = green0, bg = bg0, style = 'italic'},
    -- CTRL P (ctrlpvim/ctrlp.vim)
    CtrlPMatch = {fg = yellow, bg = bg0},
    CtrlPNoEntries = {fg = red, bg = bg0},
    CtrlPPrtBase = {fg = bg2, bg = bg0},
    CtrlPPrtCursor = {fg = blue0, bg = bg0},
    CtrlPLinePre = {fg = bg2, bg = bg0},
    CtrlPMode1 = {fg = blue0, bg = bg2, style = 'bold'},
    CtrlPMode2 = {fg = bg0, bg = blue0, style = 'bold'},
    CtrlPStats = {fg = fg4, bg = bg2, style = 'bold'},
    -- Current Word (dominikduda/vim_current_word)
    CurrentWord = {fg = fg0, bg = purple, style = 'underline'},
    CurrentWordTwins = {fg = fg0, bg = purple},
    -- Dirvish (justinmk/vim-dirvish)
    DirvishPathTail = {fg = aqua0, bg = bg0},
    DirvishArg = {fg = yellow, bg = bg0},
    -- Easy Motion (easymotion/vim-easymotion)
    EasyMotionTarget = {fg = green, bg = bg0, style = 'bold,reverse'},
    EasyMotionShade = {fg = green0, bg = bg0, style = 'italic'},
    -- Git Commit (tpope/vim-git)
    gitcommitSelectedFile = {fg = green, bg = bg0},
    gitcommitDiscardedFile = {fg = red, bg = bg0},
    -- Gitgutter (airblade/vim-gitgutter)
    GitGutterAdd = {fg = green, bg = bg0, style = 'bold'},
    GitGutterChange = {fg = orange0, bg = bg0, style = 'bold'},
    GitGutterDelete = {fg = red, bg = bg0, style = 'bold'},
    GitGutterChangeDelete = {fg = red1, bg = bg0, style = 'bold'},
    -- Git Messenger (rhysd/git-messenger.vim)
    gitmessengerPopupNormal = {fg = fg0, bg = bg1}, -- Normal color in popup window
    gitmessengerHeader = {fg = fg0, bg = bg1},      -- Header such as 'Commit:', 'Author:'
    gitmessengerHash = {fg = fg0, bg = bg1},        -- Commit hash at 'Commit:' header
    gitmessengerHistory = {fg = fg0, bg = bg1},     -- History number at 'History:' header
    -- Indent Guide (nathanaelkane/vim-indent-guides)
    IndentGuidesOdd = {fg = bg0, bg = bg2, style = 'reverse'},
    IndentGuidesEven = {fg = bg0, bg = bg1, style = 'reverse'},
    -- Multi Cursors (mg979/vim-visual-multi)
    multiple_cursors_cursor = {fg = fg0, bg = bg0, style = 'reverse'},
    multiple_cursors_visual = {fg = fg0, bg = bg2},
    -- NerdTree (preservim/nerdtree)
    NERDTreeDir = {fg = blue0, bg = bg0, style = 'bold'},
    NERDTreeDirSlash = {fg = blue0, bg = bg0},
    NERDTreeOpenable = {fg = blue0, bg = bg0},
    NERDTreeClosable = {fg = blue0, bg = bg0},
    NERDTreeFile = {fg = fg1, bg = bg0},
    NERDTreeExecFile = {fg = yellow, bg = bg0},
    NERDTreeUp = {fg = red1, bg = bg0},
    NERDTreeCWD = {fg = purple0, bg = bg0},
    NERDTreeHelp = {fg = fg1, bg = bg0},
    NERDTreeToggleOn = {fg = green, bg = bg0},
    NERDTreeToggleOff = {fg = red, bg = bg0},
    -- Netrw (vim builtin)
    netrwDir = {fg = blue0, bg = bg0},
    netrwClassify = {fg = blue0, bg = bg0},
    netrwLink = {fg = grey, bg = bg0},
    netrwSymLink = {fg = fg1, bg = bg0},
    netrwExe = {fg = yellow, bg = bg0},
    netrwComment = {fg = grey, bg = bg0},
    netrwList = {fg = blue0, bg = bg0},
    netrwHelpCmd = {fg = aqua0, bg = bg0},
    netrwCmdSep = {fg = fg3, bg = bg0},
    netrwVersion = {fg = green, bg = bg0},
    -- Show Marks (jacquesbh/vim-showmarks) -- Created by Andreas Politz
    ShowMarksHLl = {fg = blue0, bg = bg0, style = 'bold'},
    ShowMarksHLu = {fg = blue0, bg = bg0, style = 'bold'},
    ShowMarksHLo = {fg = blue0, bg = bg0, style = 'bold'},
    ShowMarksHLm = {fg = blue0, bg = bg0, style = 'bold'},
    -- Signature (kshenoy/vim-signature)
    SignatureMarkText = {fg = blue0, bg = bg0, style = 'bold'},
    SignatureMarkerText = {fg = purple0, bg = bg0, style = 'bold'},
    -- Signify (mhinz/vim-signify)
    SignifySignAdd = {fg = green, bg = bg0},
    SignifySignChange = {fg = orange0, bg = bg0},
    SignifySignDelete = {fg = red, bg = bg0},
    -- Startify (mhinz/vim-startify)
    StartifyBracket = {fg = fg3, bg = bg0},
    StartifyFile = {fg = fg1, bg = bg0},
    StartifyNumber = {fg = blue0, bg = bg0},
    StartifyPath = {fg = blue1, bg = bg0, style = 'bold'},
    StartifySlash = {fg = blue0, bg = bg0},
    StartifySection = {fg = blue0, bg = bg0, style = 'bold'},
    StartifySpecial = {fg = red1, bg = bg0},
    StartifyHeader = {fg = purple2, bg = bg0},
    StartifyFooter = {fg = purple2, bg = bg0},
    -- Syntastic (vim-syntastic/syntastic)
    SyntasticError = {fg = fg0, bg = bg0, style = 'undercurl'},
    SyntasticWarning = {fg = fg0, bg = bg0, style = 'undercurl'},
    SyntasticErrorSign = {fg = red, bg = bg0},
    SyntasticWarningSign = {fg = yellow, bg = bg0},
    -- Which Key (liuchengxu/vim-which-key)
    WhichKey = {fg = purple0, bg = bg0, style = 'bold'},
    WhichKeySeperator = {fg = green, bg = bg0},
    WhichKeyGroup = {fg = blue0, bg = bg0, style = 'bold'},
    WhichKeyDesc = {fg = blue1, bg = bg0},

    ---------------------
    -- Neovim Builtins --
    ---------------------

    -- +- Neovim Support -+
    -- healthError = {}
    -- healthSuccess = {}
    -- healthWarning = {}
    -- TermCursorNC = {}
    -- LSP Groups (descriptions and ordering from `:h lsp-highlight`)
    -- LspDiagnosticsError = {} -- used for "Error" diagnostic virtual text
    -- LspDiagnosticsErrorSign = {} -- used for "Error" diagnostic signs in sign column
    -- LspDiagnosticsErrorFloating = {} -- used for "Error" diagnostic messages in the diagnostics float
    -- LspDiagnosticsWarning = {} -- used for "Warning" diagnostic virtual text
    -- LspDiagnosticsWarningSign = {} -- used for "Warning" diagnostic signs in sign column
    -- LspDiagnosticsWarningFloating = {} -- used for "Warning" diagnostic messages in the diagnostics float
    -- LSPDiagnosticsInformation = {} -- used for "Information" diagnostic virtual text
    -- LspDiagnosticsInformationSign = {}  -- used for "Information" diagnostic signs in sign column
    -- LspDiagnosticsInformationFloating = {} -- used for "Information" diagnostic messages in the diagnostics float
    -- LspDiagnosticsHint = {}  -- used for "Hint" diagnostic virtual text
    -- LspDiagnosticsHintSign = {} -- used for "Hint" diagnostic signs in sign column
    -- LspDiagnosticsHintFloating = {} -- used for "Hint" diagnostic messages in the diagnostics float
    -- LspReferenceText = {} -- used for highlighting "text" references
    -- LspReferenceRead = {} -- used for highlighting "read" references
    -- LspReferenceWrite = {} -- used for highlighting "write" references
    -- Nvim Treesitter Groups (descriptions and ordering from `:h nvim-treesitter-highlights`)
    TSError = {fg = red, bg = bg0, style = 'bold'}, -- For syntax/parser errors
    TSPunctDelimiter = {fg = delim, bg = bg0}, -- For delimiters ie: `.
    -- TSPunctBracket = {} -- For brackets and parens
    -- TSPunctSpecial = {} -- For special punctutation that does not fall in the catagories before
    TSConstant = {fg = delim, bg = bg0}, -- For constants
    TSConstBuiltin = {fg = green0, bg = bg0}, -- For constant that are built in the language: `nil` in Lua
    TSConstMacro = {fg = green0, bg = bg0}, -- For constants that are defined by macros: `NULL` in C
    TSString = {fg = aqua0, bg = bg0}, -- For strings
    -- TSStringRegex = {} -- For regexes
    -- TSStringEscape = {} -- For escape characters within a string
    TSCharacter = {fg = purple0, bg = bg0}, -- For characters
    TSNumber = {fg = number, bg = bg0}, -- For integers
    TSBoolean = {fg = war, bg = bg0}, -- For booleans
    TSFloat = {fg = float, bg = bg0}, -- For floats
    TSFunction = {fg = purple0, bg = bg0}, -- For function (calls and definitions
    TSFuncBuiltin = {fg = purple0, bg = bg0}, -- For builtin functions: `table.insert` in Lua
    TSFuncMacro = {fg = purple0, bg = bg0}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSParameter = {} -- For parameters of a function.
    -- TSParameterReference = {} -- For references to parameters of a function.
    TSMethod = {fg = purple0, bg = bg0}, -- For method calls and definitions.
    -- TSField = {} -- For fields.
    -- TSProperty = {} -- Same as `TSField`.
    -- TSConstructor = {} -- For constructor calls and definitions: `{}` in Lua, and Java constructors
    TSConditional = {fg = blue0, bg = bg0}, -- For keywords related to conditionnals
    TSRepeat = {fg = red1, bg = bg0}, -- For keywords related to loops
    TSLabel = {fg = red1, bg = bg0}, -- For labels: `label:` in C and `:label:` in Lua
    TSOperator = {fg = blue, bg = bg0}, -- For any operator: `+`, but also `->` and `*` in C
    TSKeyword = {fg = blue0, bg = bg0}, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = {fg = purple0, bg = bg0}, -- For keywords used to define a fuction.
    TSException = {fg = red, bg = bg0}, -- For exception related keywords.
    TSType = {fg = red1, bg = bg0}, -- For types.
    TSTypeBuiltin = {fg = red1, bg = bg0}, -- For builtin types (you guessed it, right ?).
    TSStructure = {fg = aqua, bg = bg0}, -- This is left as an exercise for the reader.
    TSInclude = {fg = yellow, bg = bg0} -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSAnnotation = {} -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSText = {} -- For strings considered text in a markup language.
    -- TSStrong = {} -- For text to be represented with strong.
    -- TSEmphasis = {} -- For text to be represented with emphasis.
    -- TSUnderline = {} -- TSUnderline
    -- TSTitle = {} -- Text that is part of a title.
    -- TSLiteral = {} -- Literal text.
    -- TSURI = {} -- Any URI like a link or email.
    -- TSVariable = {} -- Any URI like a link or email.
    -- TSVariableBuiltin = {}  -- Variable names that are defined by the languages, like `this` or `self`.
}

for group, styles in pairs(syntax) do highlight(group, styles) end
