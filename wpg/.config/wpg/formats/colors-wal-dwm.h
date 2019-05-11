static const char norm_fg[] = "#d5ffff";
static const char norm_bg[] = "#0d1215";
static const char norm_border[] = "#0d1215";

static const char sel_fg[] = "#d5ffff";
static const char sel_bg[] = "#464D40";
static const char sel_border[] = "#d5ffff";

static const char urg_fg[] = "#d5ffff";
static const char urg_bg[] = "#D06B1A";
static const char urg_border[] = "#D06B1A";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
