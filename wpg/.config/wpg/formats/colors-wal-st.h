const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d1215", /* black   */
  [1] = "#D06B1A", /* red     */
  [2] = "#464D40", /* green   */
  [3] = "#D99837", /* yellow  */
  [4] = "#973124", /* blue    */
  [5] = "#B26151", /* magenta */
  [6] = "#A4571D", /* cyan    */
  [7] = "#9fc2c2", /* white   */

  /* 8 bright colors */
  [8]  = "#0d1215",  /* black   */
  [9]  = "#ff8912",  /* red     */
  [10] = "#5a6d4a", /* green   */
  [11] = "#ffc935", /* yellow  */
  [12] = "#d03622", /* blue    */
  [13] = "#f87258", /* magenta */
  [14] = "#e16f19", /* cyan    */
  [15] = "#d5ffff", /* white   */

  /* special colors */
  [256] = "#0d1215", /* background */
  [257] = "#d5ffff", /* foreground */
  [258] = "#d5ffff",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
