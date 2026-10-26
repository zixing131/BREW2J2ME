package bio.original;

/** Literal tile coordinates from the original ARM data, consumed by 0xA7E8.
 * Exit pairs at 0x270F0, destinations at 0x27170, story objectives at 0x271B0. */
public final class OriginalRadar {
    public static final int[] EXITS={
        31,1,0,0, 29,1,55,27, 27,1,47,37, 1,10,48,9,
        8,26,36,39, 36,4,15,33, 45,6,2,44, 47,1,4,30,
        10,1,1,17, 13,1,28,2, 1,14,27,4, 1,16,28,1,
        1,14,27,4, 1,16,0,0, 46,1,9,40, 15,1,0,0};
    public static final int[] DESTINATIONS={27,1, 0,0, 0,0, 2,12, 0,0, 0,0, 48,6, 44,1, 18,8, 12,2, 0,0, 0,0, 0,0, 0,0, 4,37, 0,0};
    public static final int[] OBJECTIVES={
        0,31,2, 0,12,15, 0,29,1, 0,23,27, 0,29,1, 1,30,27,
        1,11,6, 1,56,27, 2,7,30, 2,35,35, 2,47,36, 3,16,25,
        3,48,10, 4,24,25, 2,46,24, 4,9,25, 5,14,33, 6,14,13,
        6,42,42, 6,2,45, 7,15,23, 7,4,30, 8,9,5, 6,42,47,
        12,28,8, 7,4,30, 14,9,40, 14,9,40, 15,0,0, 7,4,30,
        2,7,31, 6,42,47, 13,28,1, 7,13,16, 1,50,12, 7,7,20};
}
