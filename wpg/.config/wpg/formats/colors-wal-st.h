const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d1215", /* black   */
  [1] = "#BB6048", /* red     */
  [2] = "#6199A7", /* green   */
  [3] = "#D88C71", /* yellow  */
  [4] = "#477A85", /* blue    */
  [5] = "#966057", /* magenta */
  [6] = "#60A1B1", /* cyan    */
  [7] = "#cfc9c8", /* white   */

  /* 8 bright colors */
  [8]  = "#0d1215",  /* black   */
  [9]  = "#ff724c",  /* red     */
  [10] = "#6cd1ea", /* green   */
  [11] = "#ffab7d", /* yellow  */
  [12] = "#4fa7ba", /* blue    */
  [13] = "#d27161", /* magenta */
  [14] = "#6bdcf7", /* cyan    */
  [15] = "#fffbfa", /* white   */

  /* special colors */
  [256] = "#0d1215", /* background */
  [257] = "#fffbfa", /* foreground */
  [258] = "#fffbfa",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
