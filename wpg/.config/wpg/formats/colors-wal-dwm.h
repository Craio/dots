static const char norm_fg[] = "#fffbfa";
static const char norm_bg[] = "#0d1215";
static const char norm_border[] = "#0d1215";

static const char sel_fg[] = "#fffbfa";
static const char sel_bg[] = "#6199A7";
static const char sel_border[] = "#fffbfa";

static const char urg_fg[] = "#fffbfa";
static const char urg_bg[] = "#BB6048";
static const char urg_border[] = "#BB6048";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
