lua << EOF
vim.g.colors_name = "space-nvim"

if vim.o.background == "dark" then
    -- Dark Colors
    act1 = {"#222226", 235, "act1"}
    bg0 = {"#292b2e", 16, "bg0"}
    bg1 = {"#212026", 235, "bg1"}
    bg2 = {"#100a14", 233, "bg2"}
    bg3 = {"#0a0814", 16, "bg3"}
    bg4 = {"#34323e", 59, "bg4"}
    fg0 = {"#cdcdcd", 252, "fg0"}
    fg1 = {"#b2b2b2", 249, "fg1"}
    fg2 = {"#8e8e8e", 245, "fg2"}
    fg3 = {"#727272", 243, "fg3"}
    fg4 = {"#9a9aba", 247, "fg4"}
    fg5 = {"#5e5079", 241, "fg5"}
    --fg6        = {'#666666', 241, 'fg7'}
    grey = {"#44505c", 239, "grey"}
    grey1 = {"#768294", 102, "grey1"}
    red1 = {"#ce537a", 168, "red1"}
    blue1 = {"#7590db", 68, "blue1"}
    purple0 = {"#bc6ec5", 104, "purple0"}
    purple1 = {"#d698fe", 177, "purple1"}
    purple2 = {"#a45bad", 245, "purple2"}
    purple3 = {"#5d4d7a", 241, "purple3"}
    purple4 = {"#34323e", 59, "purple4"}
    aqua0 = {"#2d9574", 30, "aqua0"}
    orange0 = {"#e18254", 246, "orange0"}
    cyan = {"#28def0", 45, "cyan"}
    mat = {"#86dc2f", 245, "mat"}
    meta = {"#9f8766", 137, "meta"}
    spacelight = {"#444155", 238, "spacelight"} -- highlight seems to be an illegal keyword here
    comp = {"#c56ec3", 248, "comp"}
    cblk = {"#cbc1d5", 252, "cblk"}
    -- ui_fg = {}
    ui_activ = {"#5d4d7a", 241, "ui_activ"}

    -- Terminal Colors
    tc8 = {"#5b5b5b", 240, "tc8"}
    tc9 = {"#44505c", 239, "tc9"}
    tc13 = {"#4f97d7", 68, "tc13"}
    tc14 = {"#bc6ec5", 104, "tc14"}
    tc15 = {"#2d9574", 30, "tc15"}
    tc16 = {"#bc6ec5", 104, "tc16"}
else
    -- Light Colors
    act1 = {"#e7e5eb", 254, "act1"}
    bg0 = {"#fbf8ef", 255, "bg0"}
    bg1 = {"#efeae9", 255, "bg1"}
    bg2 = {"#e3dedd", 254, "bg2"}
    bg3 = {"#d2ceda", 252, "bg3"}
    bg4 = {"#a8a4ae", 248, "bg4"}
    fg0 = {"#83758c", 244, "fg0"}
    fg1 = {"#655370", 241, "fg1"}
    fg2 = {"#5a4a64", 240, "fg2"}
    fg3 = {"#504259", 239, "fg3"}
    fg4 = {"#8c799f", 103, "fg4"}
    fg5 = {"#c8c6dd", 188, "fg5"}
    -- fg6        = {'#666666', 241, 'fg7'}
    grey = {"#a8a8bf", 145, "grey"}
    grey1 = {"#768294", 102, "grey1"}
    red1 = {"#ba2f59", 125, "red1"}
    blue1 = {"#715ab1", 61, "blue1"}
    purple0 = {"#6c3163", 240, "purple0"}
    purple1 = {"#86589e", 97, "purple1"}
    purple2 = {"#4e3163", 239, "purple2"}
    purple3 = {"#d3d3e7", 253, "purple3"}
    purple4 = {"#e2e0ea", 188, "purple4"}
    aqua0 = {"#24775c", 29, "aqua0"}
    orange0 = {"#b46843", 131, "orange0"}
    cyan = {"#21b8c7", 38, "cyan"}
    mat = {"#ba2f59", 125, "mat"}
    meta = {"#da8b55", 173, "meta"}
    spacelight = {"#d3d3e7", 253, "spacelight"} -- highlight seems to be an illegal keyword here
    comp = {"#6c4173", 60, "comp"}
    cblk = {"#655370", 241, "cblk"}
    ui_activ = {"#fbf8ef", 255, "ui_activ"}

    -- Terminal Colors
    tc8       = {'#463a4e', 238, 'tc8'}
    tc9       = {'#a8a8bf', 138, 'tc9'}
    tc13      = {'#3a81c3', 68, 'tc13'}
    tc14      = {'#6c3163', 240, 'tc14'}
    tc15      = {'#24775c', 29, 'tc15'}
    tc16      = {'#655370', 241, 'tc16'}
end

-- Common 
local foreg = {"#5b5b5b", 240, "fg"}
local red = {"#f2241f", 196, "red"}
local red0 = {"#f54e3c", 244, "red0"}
local blue = {"#58b0d9", 247, "blue"}
local blue0 = {"#4f97d7", 68, "blue0"}
local purple = {"#544a65", 59, "purple"}
local green = {"#67b11d", 242, "green"}
local green0 = {"#2aa1ae", 244, "green0"}
local aqua = {"#4495b4", 244, "aqua"}
local orange = {"#d79650", 246, "orange"}
local yellow = {"#b1951d", 136, "yellow"}
local yellow1 = {"#e5d11c", 247, "yellow1"}
local war = {"#dc752f", 244, "war"}
local number = {"#e697e6", 252, "number"}
local debug = {"#ffc8c8", 224, "debug"}
local float = {"#b7b7ff", 147, "float"}
local delim = {"#74baac", 247, "delim"}

local tc2 = {"#d26487", 168, "tc2"}
local tc3 = {"#35a8a5", 73, "tc3"}
local tc4 = {"#b89f33", 244, "tc4"}
local tc5 = {"#6981c5", 246, "tc5"}
local tc6 = {"#a15ea7", 133, "tc6"}
local tc7 = {"#288668", 240, "tc7"}
local tc10 = {"#f2241f", 196, "tc10"}
local tc12 = {"#a15ea7", 133, "tc12"}

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = "bg"
local FG = "fg"
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal = {fg = gray_light, bg = black}
    
local normal = (function()
    if vim.g.space_nvim_transparent_bg ~= true then
        return  {fg = fg1, bg = bg0}
    else
        return  {fg = fg1, bg = NONE}
    end
end)()

-- This is where the rest of your highlights should go.
local highlight_groups = {
        -------------------------------------------------------------
    -- Syntax Groups (descriptions and ordering from `:h w18`) --
    -------------------------------------------------------------

    Comment = {fg = green0, style = 'italic'}, -- any comment
    Constant = {fg = green0}, -- any constant
    String = {fg = aqua0, style = 'italic'}, -- this is a string
    Character = {fg = purple0}, -- a character constant: 'c', '\n'
    Boolean = {fg = war}, -- a boolean constant: TRUE, false
    Float = {fg = float}, -- a floating point constant: 2.3e10
    Identifier = {fg = blue1}, -- any variable name
    Function = {fg = purple0, style = 'bold'}, -- function name (also: methods for classes)
    Statement = {fg = blue0}, -- any statement
    Conditional = {fg = blue0, style = 'bold'}, -- if, then, else, endif, switch, etc.
    Repeat = {fg = red1, style = 'bold'}, -- for, do, while, etc.
    Label = {fg = red1}, -- case, default, etc.
    Operator = {fg = blue}, -- sizeof", "+", "*", etc.
    Keyword = {fg = blue0, style = 'bold'}, -- any other keyword
    Exception = {fg = red}, -- try, catch, throw
    PreProc = {fg = purple1}, -- generic Preprocessor
    Include = {fg = yellow}, -- preprocessor #include
    Define = {fg = aqua0}, -- preprocessor #define
    Macro = {fg = blue1, style = 'bold'}, -- same as Define
    PreCondit = {fg = purple2}, -- preprocessor #if, #else, #endif, etc.
    Type = {fg = red1}, -- int, long, char, etc.
    StorageClass = {fg = yellow, style = 'bold'}, -- static, register, volatile, etc.
    Structure = {fg = aqua, style = 'bold'}, -- struct, union, enum, etc.
    Typedef = {fg = yellow}, -- A typedef
    Special = {fg = orange, style = 'italic'}, -- any special symbol
    SpecialChar = {fg = cyan}, -- special character in a constant
    Tag = {fg = orange0}, -- you can use CTRL-] on this
    Delimiter = {fg = delim}, -- character that needs attention
    SpecialComment = {fg = grey1}, -- special things inside a comment
    Debug = {fg = red0}, -- debugging statements
    Underlined = {fg = blue0, style = 'underline'}, -- text that stands out, HTML links
    Ignore = {fg = float}, -- left blank, hidden
    Error = {fg = red, style = 'bold,reverse'}, -- any erroneous construct
    Todo = {fg = orange0, style = 'bold,italic'}, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    --------------------------------------------------------------------------------
    -- Highlighting Groups (descriptions and ordering from `:h highlight-groups`) --
    --------------------------------------------------------------------------------

    ColorColumn = {fg = fg0, bg = bg1}, --  used for the columns set with 'colorcolumn'
    Conceal = {fg = blue0, bg = bg0}, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = {fg = orange0, style = 'bold,reverse'}, -- the character under the cursor
    CursorIM = {fg = fg0, style = 'reverse'}, -- like Cursor, but used when in IME mode
    Directory = {fg = blue0, style = 'bold'}, -- directory names (and other special names in listings)
    DiffAdd = {fg = green, style = 'reverse'}, -- diff mode: Added line
    DiffChange = {fg = orange0, style = 'reverse'}, --  diff mode: Changed line
    DiffDelete = {fg = red, style = 'reverse'}, -- diff mode: Deleted line
    DiffText = {fg = yellow, style = 'reverse'}, -- diff mode: Changed text within a changed line
    EndOfBuffer = {fg = bg0}, -- filler lines (~) after the last line in the buffer
    ErrorMsg = {fg = bg0, bg = bg1}, -- error messages on the command line
    VertSplit = {fg = bg1}, -- the column separating verti-- cally split windows
    Folded = {fg = purple2, bg = bg1, style = 'italic'}, -- line used for closed folds
    FoldColumn = {fg = purple0}, -- 'foldcolumn'
    SignColumn = {fg = fg1}, -- column where signs are displayed
    IncSearch = {fg = orange0, style = 'bold,reverse'}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    LineNr = {fg = grey}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = {fg = purple0}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = {fg = green, style = 'bold,underline'}, -- The character under the cursor or just before it, if it is a paired bracket, and its match.
    ModeMsg = {fg = yellow1}, -- 'showmode' message (e.g., "-- INSERT --")
    MoreMsg = {fg = yellow1}, -- more-prompt
    NonText = {fg = grey}, -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    Normal = normal, -- normal text
    Pmenu = {fg = fg5, bg = purple4}, -- Popup menu: normal item.
    PmenuSel = {fg = fg0, bg = fg6}, -- Popup menu: selected item.
    PmenuSbar = {fg = fg0, bg = bg1}, -- Popup menu: scrollbar.
    PmenuThumb = {fg = fg0, bg = purple3}, -- Popup menu: Thumb of the scrollbar.
    Question = {fg = orange0, style = 'bold'}, -- hit-enter prompt and yes/no questions
    QuickFixLine = {fg = green, style = 'bold,reverse'}, -- Current quickfix item in the quickfix window.
    qfLineNr = {fg = red1},
    Search = {fg = green, style = 'bold,reverse'}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey = {fg = purple0}, -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
    SpellBad = {fg = red, style = 'italic,undercurl'}, -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
    SpellCap = {fg = blue0, style = 'italic,undercurl'}, -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
    SpellLocal = {fg = aqua0, style = 'italic,undercurl'}, -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
    SpellRare = {fg = purple0, style = 'italic,undercurl'}, -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
    StatusLine = {fg = fg1, bg = purple3}, -- status line of current window
    StatusLineNC = {fg = purple3, bg = purple4}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineTerm = {fg = fg1, bg = purple3}, -- status line of current :terminal window
    StatusLineTermNC = {fg = purple3, bg = purple4}, -- status line of non-current :terminal window
    TabLineFill = {fg = purple, bg = bg1},
    TabLineSel = {fg = green, bg = bg1},
    TabLine = {fg = purple, bg = bg1},
    Title = {fg = green, style = 'bold'}, -- titles for output from ":set all", ":autocmd" etc.
    Visual = {fg = fg0, bg = purple}, -- Visual mode selection
    VisualNOS = {fg = fg0, bg = purple}, -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
    WarningMsg = {fg = red}, --  warning messages
    WildMenu = {fg = orange0, bg = bg1, style = 'bold'}, --  current match in 'wildmenu' completion

    --------------------------------
    -- Miscellaneous Highlighting --
    --------------------------------

    CursorColumn = {bg = bg1},
    CursorLine = {bg = bg1},
    ToolbarLine = {fg = fg0, bg = bg3},
    ToolbarButton = {fg = fg0, bg = bg3, style = 'bold'},
    NormalMode = {fg = fg4, style = 'reverse'},
    InsertMode = {fg = blue0, style = 'reverse'},
    ReplaceMode = {fg = aqua0, style = 'reverse'},
    VisualMode = {fg = orange0, style = 'reverse'},
    CommandMode = {fg = purple0, style = 'reverse'},
    Warnings = {fg = orange0, style = 'reverse'},

    ------------------------------------
    -- Language-Specific Highlighting --
    ------------------------------------

    -- C
    cOperator = {fg = purple0},
    cStructure = {fg = orange0},
    -- CoffeeScript
    coffeeExtendedOp = {fg = fg3},
    coffeeSpecialOp = {fg = fg3},
    coffeeCurly = {fg = orange0},
    coffeeParen = {fg = fg3},
    coffeeBracket = {fg = orange0},
    -- Clojure
    clojureKeyword = {fg = blue0},
    clojureCond = {fg = orange0},
    clojureSpecial = {fg = orange0},
    clojureDefine = {fg = orange0},
    clojureFunc = {fg = yellow},
    clojureRepeat = {fg = yellow},
    clojureCharacter = {fg = aqua0},
    clojureStringEscape = {fg = aqua0},
    clojureException = {fg = red},
    clojureRegexp = {fg = aqua0},
    clojureRegexpEscape = {fg = aqua0},
    clojureRegexpCharClass = {fg = fg3, style = 'bold'},
    clojureRegexpMod = {fg = fg3, style = 'bold'},
    clojureRegexpQuantifier = {fg = fg3, style = 'bold'},
    clojureParen = {fg = fg3},
    clojureAnonArg = {fg = yellow},
    clojureVariable = {fg = blue0},
    clojureMacro = {fg = orange0},
    clojureMeta = {fg = yellow},
    clojureDeref = {fg = yellow},
    clojureQuote = {fg = yellow},
    clojureUnquote = {fg = yellow},
    -- CSS
    cssBraces = {fg = blue0},
    cssFunctionName = {fg = yellow},
    cssIdentifier = {fg = orange0},
    cssClassName = {fg = green},
    cssColor = {fg = blue0},
    cssSelectorOp = {fg = blue0},
    cssSelectorOp2 = {fg = blue0},
    cssImportant = {fg = green},
    cssVendor = {fg = fg1},
    cssTextProp = {fg = aqua0},
    cssAnimationProp = {fg = aqua0},
    cssUIProp = {fg = yellow},
    cssTransformProp = {fg = aqua0},
    cssTransitionProp = {fg = aqua0},
    cssPrintProp = {fg = aqua0},
    cssPositioningProp = {fg = yellow},
    cssBoxProp = {fg = aqua0},
    cssFontDescriptorProp = {fg = aqua0},
    cssFlexibleBoxProp = {fg = aqua0},
    cssBorderOutlineProp = {fg = aqua0},
    cssBackgroundProp = {fg = aqua0},
    cssMarginProp = {fg = aqua0},
    cssListProp = {fg = aqua0},
    cssTableProp = {fg = aqua0},
    cssFontProp = {fg = aqua0},
    cssPaddingProp = {fg = aqua0},
    cssDimensionProp = {fg = aqua0},
    cssRenderProp = {fg = aqua0},
    cssColorProp = {fg = aqua0},
    cssGeneratedContentProp = {fg = aqua0},
    -- DTD
    dtdFunction = {fg = grey},
    dtdTagName = {fg = purple0},
    dtdParamEntityPunct = {fg = grey},
    dtdParamEntityDPunct = {fg = grey},
    -- Diff
    diffAdded = {fg = green},
    diffRemoved = {fg = red},
    diffChanged = {fg = aqua0},
    diffFile = {fg = orange0},
    diffNewFile = {fg = yellow},
    diffLine = {fg = blue0},
    -- Elixir
    elixirDocString = {fg = green0, style = 'italic'},
    elixirStringDelimiter = {fg = green},
    elixirInterpolationDelimiter = {fg = aqua0},
    elixirModuleDeclaration = {fg = yellow},
    -- Go
    goDirective = {fg = aqua0},
    goConstants = {fg = purple0},
    goDeclaration = {fg = blue0, style = 'bold'},
    goDeclType = {fg = blue0},
    goBuiltins = {fg = orange0},
    -- Haskell
    haskellType = {fg = fg1},
    haskellIdentifier = {fg = fg1},
    haskellSeparator = {fg = fg1},
    haskellDelimiter = {fg = fg4},
    haskellOperators = {fg = blue0},
    haskellBacktick = {fg = orange0},
    haskellStatement = {fg = orange0},
    haskellConditional = {fg = orange0},
    haskellLet = {fg = aqua0},
    haskellDefault = {fg = aqua0},
    haskellWhere = {fg = aqua0},
    haskellBottom = {fg = aqua0},
    haskellBlockKeywords = {fg = aqua0},
    haskellImportKeywords = {fg = aqua0},
    haskellDeclKeyword = {fg = aqua0},
    haskellDeriving = {fg = aqua0},
    haskellAssocType = {fg = aqua0},
    haskellNumber = {fg = purple0},
    haskellPragma = {fg = purple0},
    haskellString = {fg = green},
    haskellChar = {fg = green},
    -- HTML (keep consistent with Markdown, below)
    htmlTag = {fg = blue0},
    htmlEndTag = {fg = blue0},
    htmlTagName = {fg = purple2},
    htmlArg = {fg = aqua0},
    htmlScriptTag = {fg = purple0},
    htmlTagN = {fg = fg1},
    htmlSpecialTagName = {fg = aqua0, style = 'bold'},
    htmlLink = {fg = blue0, style = 'underline'},
    htmlSpecialChar = {fg = orange0},
    htmlBold = {fg = fg0, style = 'bold'},
    htmlBoldUnderline = {fg = fg0, style = 'bold,underline'},
    htmlBoldItalic = {fg = fg0, style = 'bold,italic'},
    htmlBoldUnderlineItalic = {
        fg = fg0,
        bg = bg0,
        style = 'bold,italic,underline'
    },
    htmlUnderline = {fg = fg0, style = 'underline'},
    htmlUnderlineItalic = {fg = fg0, style = 'italic,underline'},
    htmlItalic = {fg = blue1, style = 'italic'},
    htmlH1 = {fg = blue0, style = 'bold'},
    htmlH2 = {fg = aqua0, style = 'bold'},
    htmlH3 = {fg = green, style = 'bold'},
    htmlH4 = {fg = yellow, style = 'bold'},
    htmlH5 = {fg = yellow},
    htmlH6 = {fg = yellow},
    -- Java
    javaAnnotation = {fg = blue0},
    javaDocTags = {fg = aqua0},
    javaCommentTitle = {fg = blue1, style = 'bold'},
    javaParen = {fg = fg3},
    javaParen1 = {fg = fg3},
    javaParen2 = {fg = fg3},
    javaParen3 = {fg = fg3},
    javaParen4 = {fg = fg3},
    javaParen5 = {fg = fg3},
    javaOperator = {fg = orange0},
    javaVarArg = {fg = green},
    -- JavaScript
    javaScriptBraces = {fg = fg1},
    javaScriptFunction = {fg = aqua0},
    javaScriptIdentifier = {fg = red},
    javaScriptMember = {fg = blue0},
    javaScriptNumber = {fg = purple0},
    javaScriptNull = {fg = purple0},
    javaScriptParens = {fg = fg3},
    javascriptImport = {fg = aqua0},
    javascriptExport = {fg = aqua0},
    javascriptClassKeyword = {fg = aqua0},
    javascriptClassExtends = {fg = aqua0},
    javascriptDefault = {fg = aqua0},
    javascriptClassName = {fg = yellow},
    javascriptClassSuperName = {fg = yellow},
    javascriptGlobal = {fg = yellow},
    javascriptEndColons = {fg = fg1},
    javascriptFuncArg = {fg = fg1},
    javascriptGlobalMethod = {fg = fg1},
    javascriptNodeGlobal = {fg = fg1},
    javascriptBOMWindowProp = {fg = fg1},
    javascriptArrayMethod = {fg = fg1},
    javascriptArrayStaticMethod = {fg = fg1},
    javascriptCacheMethod = {fg = fg1},
    javascriptDateMethod = {fg = fg1},
    javascriptMathStaticMethod = {fg = fg1},
    javascriptURLUtilsProp = {fg = fg1},
    javascriptBOMNavigatorProp = {fg = fg1},
    javascriptDOMDocMethod = {fg = fg1},
    javascriptDOMDocProp = {fg = fg1},
    javascriptBOMLocationMethod = {fg = fg1},
    javascriptBOMWindowMethod = {fg = fg1},
    javascriptStringMethod = {fg = fg1},
    javascriptVariable = {fg = orange0},
    javascriptIdentifier = {fg = orange0},
    javascriptClassSuper = {fg = orange0},
    javascriptFuncKeyword = {fg = aqua0},
    javascriptAsyncFunc = {fg = aqua0},
    javascriptClassStatic = {fg = orange0},
    javascriptOperator = {fg = red1},
    javascriptForOperator = {fg = red1},
    javascriptYield = {fg = red1},
    javascriptExceptions = {fg = red1},
    javascriptMessage = {fg = red1},
    javascriptTemplateSB = {fg = aqua0},
    javascriptTemplateSubstitution = {fg = fg1},
    javascriptLabel = {fg = fg1},
    javascriptObjectLabel = {fg = fg1},
    javascriptPropertyName = {fg = fg1},
    javascriptLogicSymbols = {fg = fg1},
    javascriptArrowFunc = {fg = yellow},
    javascriptDocParamName = {fg = fg4},
    javascriptDocTags = {fg = fg4},
    javascriptDocNotation = {fg = fg4},
    javascriptDocParamType = {fg = fg4},
    javascriptDocNamedParamType = {fg = fg4},
    javascriptBrackets = {fg = fg1},
    javascriptDOMElemAttrs = {fg = fg1},
    javascriptDOMEventMethod = {fg = fg1},
    javascriptDOMNodeMethod = {fg = fg1},
    javascriptDOMStorageMethod = {fg = fg1},
    javascriptHeadersMethod = {fg = fg1},
    javascriptAsyncFuncKeyword = {fg = red1, style = 'bold'},
    javascriptAwaitFuncKeyword = {fg = red1, style = 'bold'},
    jsClassKeyword = {fg = blue0, style = 'bold'},
    jsExtendsKeyword = {fg = blue0, style = 'bold'},
    jsExportDefault = {fg = blue0, style = 'bold'},
    jsTemplateBraces = {fg = aqua0},
    jsGlobalNodeObjects = {fg = blue0, style = 'bold'},
    jsGlobalObjects = {fg = blue0, style = 'bold'},
    jsFunction = {fg = purple0, style = 'bold'},
    jsFuncParens = {fg = orange0},
    jsParens = {fg = red1},
    jsNull = {fg = purple0},
    jsUndefined = {fg = bg0, bg = bg1},
    jsClassDefinition = {fg = yellow},
    jsObjectProp = {fg = blue1},
    jsObjectKey = {fg = blue},
    jsFunctionKey = {fg = blue1},
    jsBracket = {fg = red1},
    jsObjectColon = {fg = red1},
    jsFuncArgs = {fg = blue},
    jsFuncBraces = {fg = blue1},
    jsVariableDef = {fg = fg1},
    jsObjectBraces = {fg = orange, style = 'italic'},
    jsObjectValue = {fg = float},
    jsClassBlock = {fg = blue1},
    jsFutureKeys = {fg = orange0, style = 'bold'},
    jsStorageClass = {fg = blue0},
    jsxRegion = {fg = blue0},
    -- JSON
    jsonKeyword = {fg = green},
    jsonQuote = {fg = green},
    jsonBraces = {fg = fg1},
    jsonString = {fg = fg1},
    -- Lua
    luaIn = {fg = red1},
    luaFunction = {fg = aqua0},
    luaTable = {fg = orange0},
    -- Markdown (keep consistent with HTML, above
    markdownItalic = {fg = fg3, style = 'italic'},
    markdownH1 = {fg = blue0, style = 'bold'},
    markdownH2 = {fg = aqua0, style = 'bold'},
    markdownH3 = {fg = green, style = 'bold'},
    markdownH4 = {fg = yellow, style = 'bold'},
    markdownH5 = {fg = yellow},
    markdownH6 = {fg = yellow},
    markdownCode = {fg = purple2},
    mkdCode = {fg = purple2},
    markdownCodeBlock = {fg = aqua0},
    markdownCodeDelimiter = {fg = orange0},
    mkdCodeDelimiter = {fg = orange0},
    markdownBlockquote = {fg = grey},
    markdownListMarker = {fg = grey},
    markdownOrderedListMarker = {fg = grey},
    markdownRule = {fg = grey, bg = NONE},
    markdownHeadingRule = {fg = grey},
    markdownUrlDelimiter = {fg = fg3},
    markdownLinkDelimiter = {fg = fg3},
    markdownLinkTextDelimiter = {fg = fg3},
    markdownHeadingDelimiter = {fg = orange0},
    markdownUrl = {fg = purple0},
    markdownUrlTitleDelimiter = {fg = green},
    markdownLinkText = {fg = blue0, style = 'underline'},
    markdownIdDeclaration = {fg = blue0, style = 'underline'},
    -- MoonScript
    moonSpecialOp = {fg = fg3},
    moonExtendedOp = {fg = fg3},
    moonFunction = {fg = fg3},
    moonObject = {fg = yellow},
    -- Objective-C
    objcTypeModifier = {fg = red},
    objcDirective = {fg = blue0},
    -- PureScript
    purescriptModuleKeyword = {fg = aqua0},
    purescriptModuleName = {fg = red1, style = 'bold'},
    purescriptWhere = {fg = aqua0},
    purescriptDelimiter = {fg = fg4},
    purescriptType = {fg = red1},
    purescriptImportKeyword = {fg = blue0, style = 'bold'},
    purescriptHidingKeyword = {fg = blue0, style = 'bold'},
    purescriptAsKeyword = {fg = blue0, style = 'bold'},
    purescriptStructure = {fg = aqua, style = 'bold'},
    purescriptOperator = {fg = blue},
    purescriptTypeVar = {fg = red1},
    purescriptConstructor = {fg = purple0, style = 'bold'},
    purescriptFunction = {fg = purple0, style = 'bold'},
    purescriptConditional = {fg = blue0, style = 'bold'},
    purescriptBacktick = {fg = orange0},
    -- Python
    pythonCoding = {fg = green0, style = 'italic'},
    -- Ruby
    rubyStringDelimiter = {fg = green},
    rubyInterpolationDelimiter = {fg = aqua0},
    -- Rust
    rustSelf = {fg = blue0, style = 'bold'},
    rustPanic = {fg = red1, style = 'bold'},
    rustAssert = {fg = blue1, style = 'bold'},
    rustKeyword = {fg = red1},
    rustModPath = {fg = fg1},
    rustModPathSep = {fg = blue1, style = 'bold'},
    rustSigil = {fg = blue0},
    rustAttribute = {fg = fg1},
    -- Scala
    scalaNameDefinition = {fg = fg1},
    scalaCaseFollowing = {fg = fg1},
    scalaCapitalWord = {fg = fg1},
    scalaTypeExtension = {fg = fg1},
    scalaKeyword = {fg = red1, style = 'bold'},
    scalaKeywordModifier = {fg = red1},
    scalaSpecial = {fg = aqua0},
    scalaOperator = {fg = fg1},
    scalaTypeDeclaration = {fg = yellow},
    scalaTypeTypePostDeclaration = {fg = yellow},
    scalaInstanceDeclaration = {fg = fg1},
    scalaInterpolation = {fg = aqua0},
    -- TypeScript
    typeScriptReserved = {fg = aqua0},
    typeScriptLabel = {fg = red1},
    typeScriptFuncKeyword = {fg = purple0, style = 'bold'},
    typeScriptIdentifier = {fg = blue1},
    typeScriptBraces = {fg = red1},
    typeScriptEndColons = {fg = fg1},
    typeScriptDOMObjects = {fg = fg1},
    typeScriptAjaxMethods = {fg = purple0, style = 'bold'},
    typeScriptLogicSymbols = {fg = fg1},
    typeScriptDocSeeTag = {fg = green0, style = 'italic'},
    typeScriptDocParam = {fg = green0, style = 'italic'},
    typeScriptDocTags = {fg = blue1, style = 'bold'},
    typeScriptGlobalObjects = {fg = blue0, style = 'bold'},
    typeScriptParens = {fg = blue1},
    typeScriptOpSymbols = {fg = blue},
    typeScriptHtmlElemProperties = {fg = orange, style = 'italic'},
    typeScriptNull = {fg = purple0, style = 'bold'},
    typeScriptInterpolationDelimiter = {fg = aqua0},
    -- XML
    xmlTag = {fg = blue0},
    xmlEndTag = {fg = blue0},
    xmlTagName = {fg = blue0},
    xmlEqual = {fg = blue0},
    docbkKeyword = {fg = aqua0, style = 'bold'},
    xmlDocTypeDecl = {fg = grey},
    xmlDocTypeKeyword = {fg = purple0},
    xmlCdataStart = {fg = grey},
    xmlCdataCdata = {fg = purple0},
    xmlAttrib = {fg = aqua0},
    xmlProcessingDelim = {fg = grey},
    xmlAttribPunct = {fg = grey},
    xmlEntity = {fg = orange0},
    xmlEntityPunct = {fg = orange0},
    -- Vim
    vimCommentTitle = {fg = blue1, style = 'bold'},
    vimNotation = {fg = orange0},
    vimBracket = {fg = orange0},
    vimMapModKey = {fg = orange0},
    vimCommand = {fg = blue0, style = 'bold'},
    vimLet = {fg = blue0},
    vimNorm = {fg = blue0},
    vimFuncSID = {fg = purple0, style = 'bold'},
    vimFunction = {fg = purple0, style = 'bold'},
    vimGroup = {fg = blue1},
    vimHiGroup = {fg = red1},
    vimSetSep = {fg = fg3},
    vimSep = {fg = fg3},
    vimContinue = {fg = yellow},

    -------------------------
    -- Plugin Highlighting --
    -------------------------

    -- ALE (dense-analysis/ale) 
    ALEError = {fg = fg0, style = 'undercurl'},
    ALEWarning = {fg = fg0, style = 'undercurl'},
    ALEInfo = {fg = fg0, style = 'undercurl'},
    ALEErrorSign = {fg = red},
    ALEWarningSign = {fg = yellow},
    ALEInfoSign = {fg = blue0},
    -- Barbar (romgrk/barbar.nvim)
    BufferCurrent = {fg = fg1, bg = ui_activ},
    BufferCurrentIndex = {fg = fg1, bg = ui_activ},
    BufferCurrentMod = {fg = fg1, bg = ui_activ},
    BufferCurrentSign = {fg = fg1, bg = bg0},
    BufTabLineCurrent = {fg = fg1, bg = ui_activ},
    BufferCurrentTarget = {fg = fg1, bg = ui_activ, style = bold},

    BufferVisible = {fg = grey, bg = bg1},
    BufferVisibleIndex = {fg = grey, bg = bg1},
    BufferVisibleMod = {fg = grey, bg = bg1},
    BufferVisibleSign = {fg = bg0, bg = bg0},
    BufferVisibleTarget = {fg = grey, bg = bg1, style = bold},

    BufferInactive = {fg = grey, bg = bg1},
    BufferInactiveIndex = {fg = grey, bg = bg1},
    BufferInactiveMod = {fg = grey, bg = bg1},
    BufferInactiveSign = {fg = bg0, bg = bg0},
    BufferInactiveTarget = {fg = grey, bg = bg1, style = bold},

    BufferTabpages = {fg = bg0, bg = bg0, style = bold},
    BufferTabpageFill = {fg = bg0, bg = bg0, style = bold},
    BufferPart = {fg = bg0, bg = bg0, style = bold},

    -- Buftabline (ap/vim-buftabline)
    BufTabLineCurrent = {fg = bg0, bg = fg4},
    BufTabLineActive = {fg = fg4, bg = bg2},
    BufTabLineHidden = {fg = purple4, bg = bg1},
    BufTabLineFill = {fg = bg0},
    -- Crates (mhinz/vim-crates)
    Crates = {fg = green0, style = 'italic'},
    -- CTRL P (ctrlpvim/ctrlp.vim)
    CtrlPMatch = {fg = yellow},
    CtrlPNoEntries = {fg = red},
    CtrlPPrtBase = {fg = bg2},
    CtrlPPrtCursor = {fg = blue0},
    CtrlPLinePre = {fg = bg2},
    CtrlPMode1 = {fg = blue0, bg = bg2, style = 'bold'},
    CtrlPMode2 = {fg = bg0, bg = blue0, style = 'bold'},
    CtrlPStats = {fg = fg4, bg = bg2, style = 'bold'},
    -- Current Word (dominikduda/vim_current_word)
    CurrentWord = {fg = fg0, bg = purple, style = 'underline'},
    CurrentWordTwins = {fg = fg0, bg = purple},
    -- Dirvish (justinmk/vim-dirvish)
    DirvishPathTail = {fg = aqua0},
    DirvishArg = {fg = yellow},
    -- Easy Motion (easymotion/vim-easymotion)
    EasyMotionTarget = {fg = green, style = 'bold,reverse'},
    EasyMotionShade = {fg = green0, style = 'italic'},
    -- Git Commit (tpope/vim-git)
    gitcommitSelectedFile = {fg = green},
    gitcommitDiscardedFile = {fg = red},
    -- Gitgutter (airblade/vim-gitgutter)
    GitGutterAdd = {fg = green, style = 'bold'},
    GitGutterChange = {fg = orange0, style = 'bold'},
    GitGutterDelete = {fg = red, style = 'bold'},
    GitGutterChangeDelete = {fg = red1, style = 'bold'},
    -- Git Messenger (rhysd/git-messenger.vim)
    gitmessengerPopupNormal = {fg = fg0, bg = bg1}, -- Normal color in popup window
    gitmessengerHeader = {fg = fg0, bg = bg1},      -- Header such as 'Commit:', 'Author:'
    gitmessengerHash = {fg = fg0, bg = bg1},        -- Commit hash at 'Commit:' header
    gitmessengerHistory = {fg = fg0, bg = bg1},     -- History number at 'History:' header
    -- Indent Guide (nathanaelkane/vim-indent-guides)
    IndentGuidesOdd = {fg = bg0, bg = bg2, style = 'reverse'},
    IndentGuidesEven = {fg = bg0, bg = bg1, style = 'reverse'},
    -- Multi Cursors (mg979/vim-visual-multi)
    multiple_cursors_cursor = {fg = fg0, style = 'reverse'},
    multiple_cursors_visual = {fg = fg0, bg = bg2},
    -- NerdTree (preservim/nerdtree)
    NERDTreeDir = {fg = blue0, style = 'bold'},
    NERDTreeDirSlash = {fg = blue0},
    NERDTreeOpenable = {fg = blue0},
    NERDTreeClosable = {fg = blue0},
    NERDTreeFile = {fg = fg1},
    NERDTreeExecFile = {fg = yellow},
    NERDTreeUp = {fg = red1},
    NERDTreeCWD = {fg = purple0},
    NERDTreeHelp = {fg = fg1},
    NERDTreeToggleOn = {fg = green},
    NERDTreeToggleOff = {fg = red},
    -- Netrw (vim builtin)
    netrwDir = {fg = blue0},
    netrwClassify = {fg = blue0},
    netrwLink = {fg = grey},
    netrwSymLink = {fg = fg1},
    netrwExe = {fg = yellow},
    netrwComment = {fg = grey},
    netrwList = {fg = blue0},
    netrwHelpCmd = {fg = aqua0},
    netrwCmdSep = {fg = fg3},
    netrwVersion = {fg = green},
    -- Show Marks (jacquesbh/vim-showmarks) -- Created by Andreas Politz
    ShowMarksHLl = {fg = blue0, style = 'bold'},
    ShowMarksHLu = {fg = blue0, style = 'bold'},
    ShowMarksHLo = {fg = blue0, style = 'bold'},
    ShowMarksHLm = {fg = blue0, style = 'bold'},
    -- Signature (kshenoy/vim-signature)
    SignatureMarkText = {fg = blue0, style = 'bold'},
    SignatureMarkerText = {fg = purple0, style = 'bold'},
    -- Signify (mhinz/vim-signify)
    SignifySignAdd = {fg = green},
    SignifySignChange = {fg = orange0},
    SignifySignDelete = {fg = red},
    -- Startify (mhinz/vim-startify)
    StartifyBracket = {fg = fg3},
    StartifyFile = {fg = fg1},
    StartifyNumber = {fg = blue0},
    StartifyPath = {fg = blue1, style = 'bold'},
    StartifySlash = {fg = blue0},
    StartifySection = {fg = blue0, style = 'bold'},
    StartifySpecial = {fg = red1},
    StartifyHeader = {fg = purple2},
    StartifyFooter = {fg = purple2},
    -- Syntastic (vim-syntastic/syntastic)
    SyntasticError = {fg = fg0, style = 'undercurl'},
    SyntasticWarning = {fg = fg0, style = 'undercurl'},
    SyntasticErrorSign = {fg = red},
    SyntasticWarningSign = {fg = yellow},
    -- Which Key (liuchengxu/vim-which-key)
    WhichKey = {fg = purple0, style = 'bold'},
    WhichKeySeperator = {fg = green},
    WhichKeyGroup = {fg = blue0, style = 'bold'},
    WhichKeyDesc = {fg = blue1},
    -----------------------------
    --     LSP Highlighting    --
    -----------------------------
    LspDiagnosticsDefaultError           = { fg = red },
    LspDiagnosticsDefaultWarning         = { fg = yellow },
    LspDiagnosticsDefaultInformation     = { fg = blue },
    LspDiagnosticsDefaultHint            = { fg = green0 },
    LspDiagnosticsVirtualTextError       = { fg = red },
    LspDiagnosticsVirtualTextWarning     = { fg = yellow },
    LspDiagnosticsVirtualTextInformation = { fg = blue },
    LspDiagnosticsVirtualTextHint        = { fg = green0 },
    LspDiagnosticsUnderlineError         = { fg = red , style = 'underline' },
    LspDiagnosticsUnderlineWarning       = { fg = yellow , style = 'underline' },
    LspDiagnosticsUnderlineInformation   = { fg = blue , style = 'underline' },
    LspDiagnosticsUnderlineHint          = { fg = green0 , style = 'underline' },
    LspDiagnosticsFloatingError          = { fg = red , bg = pmenu },
    LspDiagnosticsFloatingWarning        = { fg = yellow , bg = pmenu },
    LspDiagnosticsFloatingInformation    = { fg = blue , bg = pmenu },
    LspDiagnosticsFloatingHint           = { fg = green0 , bg = pmenu },
    LspDiagnosticsSignError              = { fg = red },
    LspDiagnosticsSignWarning            = { fg = yellow },
    LspDiagnosticsSignInformation        = { fg = blue },
    LspDiagnosticsSignHint               = { fg = green0 },
    LspReferenceText                     = { style = 'reverse' },
    LspReferenceRead                     = { style = 'reverse' },
    LspReferenceWrite                    = { fg = red1, style = 'reverse' },
    -----------------------------
    -- TreeSitter Highlighting --
    -----------------------------
    -- Nvim Treesitter Groups (descriptions and ordering from `:h nvim-treesitter-highlights`)
    TSAnnotation         = 'PreProc',     -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute          = 'PreProc',     -- (unstable) TODO: docs
    TSBoolean            = 'Boolean',     -- For booleans
    TSCharacter          = 'Character',   -- For characters
    TSComment            = 'Comment',     -- For comments
    TSConditional        = 'Conditional', -- For keywords related to conditionnals
    TSConstant           = 'Constant',    -- For constants
    TSConstBuiltin       = 'Special',     -- For constant that are built in the language: `nil` in Lua
    TSConstMacro         = 'Define',      -- For constants that are defined by macros: `NULL` in C
    TSConstructor        = 'Special',     -- For constructor calls and definitions: `{}` in Lua, and Java constructors
    TSEmphasis           = 'Italic',      -- For text to be represented with emphasis.
    TSError              = 'Error',       -- For syntax/parser errors
    TSException          = 'Exception',   -- For exception related keywords.
    TSField              = 'Identifier',  -- For fields
    TSFloat              = 'Float',       -- For floats
    TSFunction           = 'Function',    -- For function (calls and definitions
    TSFuncBuiltin        = 'Special',     -- For builtin functions: `table.insert` in Lua
    TSFuncMacro          = 'Macro',       -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            = 'Include',     -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword            = 'Keyword',     -- For keywords that don't fall in other categories.
    TSKeywordFunction    = 'Keyword',     -- For keywords used to define a fuction.
    TSLabel              = 'Label',       -- For labels: `label:` in C and `:label:` in Lua
    TSLiteral            = 'String',      -- Literal text.
    TSMethod             = 'Function',    -- For method calls and definitions.
    TSNamespace          = 'Include',     -- For identifiers referring to modules and namespaces.
    TSNumber             = 'Number',      -- For integers
    TSOperator           = 'Operator',    -- For any operator: `+`, but also `->` and `*` in C
    TSParameter          = 'Identifier',  -- For parameters of a function.
    TSParameterReference = 'Identifier',  -- For references to parameters of a function.
    TSProperty           = 'Identifier',  -- Same as `TSField`.
    TSPunctBracket       = 'Delimiter',   -- For brackets and parens.
    TSPunctDelimiter     = 'Delimiter',   -- For delimiters ie: `.`
    TSPunctSpecial       = 'Delimiter',   -- For special punctutation that does not fall in the catagories before.
    TSRepeat             = 'Repeat',      -- For keywords related to loops
    TSString             = 'String',      -- For strings.
    TSStringEscape       = 'SpecialChar', -- For escape characters within a string.
    TSStringRegex        = 'String',      -- For regexes.
    TSStrong             = 'bold',        -- For text to be represented with strong.
    TSTag                = 'Label',       -- Tags like html tag names.
    TSTagDelimiter       = 'Label',       -- Tag delimiter like `<` `>` `/`
    -- TSText               = { fg = yellow },  -- For strings considered text in a markup language.
    TSTitle              = 'Title',       -- Text that is part of a title.
    TSType               = 'Type',        -- For types.
    TSTypeBuiltin        = 'Type',        -- For builtin types (you guessed it, right ?).
    TSUnderline          = 'Underlined',  -- For underlined text?
    TSURI                = 'Underlined',  -- Any URI like a link or email.
    TSVariable            = 'Identifier', -- Any variable name that does not have another highlight.
    TSVariableBuiltin    = 'Special',     -- Variable names that are defined by the languages, like `this` or `self`.

}

local terminal_ansi_colors = {
    [0]  = bg0,
    [1]  = tc2,
    [2]  = tc3,
    [3]  = tc4,
    [4]  = tc5,
    [5]  = tc6,
    [6]  = tc7,
    [7]  = tc8,
    [8]  = red,
    [9]  = green,
    [10] = tc6,
    [11] = tc12,
    [12] = tc13,
    [13] = tc14,
    [14] = tc15,
    [15] = tc13
}

require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_ansi_colors)

-- Thanks to Iron-E (https://github.com/Iron-E) for the template (Iron-E/nvim-highlite).
-- vim: ft=lua

EOF
