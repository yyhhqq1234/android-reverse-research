package com.android.support;

/**
 * Display sanitizer for the mod menu.
 *
 * The menu pack (both the Java labels and the native feature strings) uses
 * Mathematical Alphanumeric Symbols (U+1D400..U+1D7FF), e.g. "𝙷𝙸𝙳𝙴" / "𝙼𝙸𝙽𝙸𝙼𝙸𝚉𝙴",
 * plus geometric shapes "▽ △". Those code points are missing from the Android
 * system fonts on most emulators/devices, so every glyph renders as the
 * "box with an X" replacement character.
 *
 * This maps them back to plain ASCII before the menu builds its views.
 */
public final class Ascii {
    /** 26-slot bases of the MATHEMATICAL ALPHANUMERIC ranges (A..Z then a..z). */
    private static final int[] BASE = {
        0x1D400, 0x1D41A, // bold
        0x1D434, 0x1D44E, // italic
        0x1D468, 0x1D482, // bold italic
        0x1D49C, 0x1D4B6, // script
        0x1D4D0, 0x1D4EA, // bold script
        0x1D504, 0x1D51E, // fraktur
        0x1D538, 0x1D552, // double-struck
        0x1D56C, 0x1D586, // bold fraktur
        0x1D5A0, 0x1D5BA, // sans-serif
        0x1D5D4, 0x1D5EE, // sans-serif bold
        0x1D608, 0x1D622, // sans-serif italic
        0x1D63C, 0x1D656, // sans-serif bold italic
        0x1D670, 0x1D68A  // monospace
    };

    private static char mapChar(int c) {
        for (int i = 0; i < BASE.length; i++) {
            int b = BASE[i];
            if (c >= b && c < b + 26) return (char) ('A' + (c - b));
            if (c >= b + 26 && c < b + 52) return (char) ('a' + (c - b - 26));
        }
        switch (c) {
            case 0x25B3: case 0x25B2: case 0x2191: return '^';   // △ ▲ ↑
            case 0x25BD: case 0x25BC: case 0x2193: return 'v';   // ▽ ▼ ↓
            case 0x25CF: case 0x2022: return '*';                // ● •
            case 0x00A0: return ' ';
            default: return 0;                                    // drop
        }
    }

    public static String fix(String s) {
        if (s == null) return null;
        StringBuilder sb = new StringBuilder(s.length());
        int i = 0;
        final int n = s.length();
        while (i < n) {
            int cp = s.codePointAt(i);          // surrogate pairs -> real code point
            int adv = Character.charCount(cp);
            i += adv;
            if (cp == '<' || cp == '>' || cp == '&' || cp == '\'' || cp == '"') {
                sb.append((char) cp);           // keep HTML markup the menu parses
                continue;
            }
            if (cp >= 0x20 && cp < 0x7F) { sb.append((char) cp); continue; }
            char r = mapChar(cp);
            if (r != 0) sb.append(r);           // unhandled non-ASCII -> dropped
        }
        return sb.toString();
    }

    /** Keep java.lang.String.split("_") from dropping a trailing empty segment
     *  ("Category_" splits to length 1 and Menu indexes [1] -> AIOOBE). */
    private static String guard(String out) {
        if (out == null) out = "";
        while (out.endsWith("_")) out = out + "INFO";
        if (out.indexOf('_') < 0) out = "RichTextView_" + out;
        return out;
    }

    public static String[] fixAll(String[] a) {
        if (a == null) return null;
        String[] r = new String[a.length];
        for (int i = 0; i < a.length; i++) {
            String before = a[i];
            String out = guard(fix(before));
            r[i] = out;
            try {
                System.out.println("SUBRESP_J feat[" + i + "] '" + before + "' -> '" + out + "'");
            } catch (Throwable ignore) { }
        }
        return r;
    }
}
