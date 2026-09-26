package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class Cocos2dxBitmap {
    private static final int HORIZONTALALIGN_CENTER = 3;
    private static final int HORIZONTALALIGN_LEFT = 1;
    private static final int HORIZONTALALIGN_RIGHT = 2;
    private static final int VERTICALALIGN_BOTTOM = 2;
    private static final int VERTICALALIGN_CENTER = 3;
    private static final int VERTICALALIGN_TOP = 1;
    private static Context sContext;

    private static native void nativeInitBitmapDC(int i, int i2, byte[] bArr);

    public static void setContext(Context context) {
        sContext = context;
    }

    public static void createTextBitmap(String string, String fontName, int fontSize, int alignment, int width, int height) {
        createTextBitmapShadowStroke(string, fontName, fontSize, 255, 255, 255, 255, alignment, width, height, false, 0.0f, 0.0f, 0.0f, 0.0f, false, 255, 255, 255, 255, 0.0f);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:489)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:492)
        */
    public static boolean createTextBitmapShadowStroke(java.lang.String r29, java.lang.String r30, int r31, int r32, int r33, int r34, int r35, int r36, int r37, int r38, boolean r39, float r40, float r41, float r42, float r43, boolean r44, int r45, int r46, int r47, int r48, float r49) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.cocos2dx.lib.Cocos2dxBitmap.createTextBitmapShadowStroke(java.lang.String, java.lang.String, int, int, int, int, int, int, int, int, boolean, float, float, float, float, boolean, int, int, int, int, float):boolean");
    }

    private static Paint newPaint(String fontName, int fontSize, int horizontalAlignment) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setTextSize(fontSize);
        paint.setAntiAlias(true);
        if (fontName.endsWith(".ttf")) {
            try {
                Typeface typeFace = Cocos2dxTypefaces.get(sContext, fontName);
                paint.setTypeface(typeFace);
            } catch (Exception e) {
                Log.e("Cocos2dxBitmap", "error to create ttf type face: " + fontName);
                paint.setTypeface(Typeface.create(fontName, 0));
            }
        } else {
            paint.setTypeface(Typeface.create(fontName, 0));
        }
        switch (horizontalAlignment) {
            case 2:
                paint.setTextAlign(Paint.Align.RIGHT);
                return paint;
            case 3:
                paint.setTextAlign(Paint.Align.CENTER);
                return paint;
            default:
                paint.setTextAlign(Paint.Align.LEFT);
                return paint;
        }
    }

    private static TextProperty computeTextProperty(String string, int width, int height, Paint paint) {
        Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        int h = (int) Math.ceil(fm.bottom - fm.top);
        int maxContentWidth = 0;
        String[] lines = splitString(string, width, height, paint);
        if (width != 0) {
            maxContentWidth = width;
        } else {
            for (String line : lines) {
                int temp = (int) Math.ceil(paint.measureText(line, 0, line.length()));
                if (temp > maxContentWidth) {
                    maxContentWidth = temp;
                }
            }
        }
        return new TextProperty(maxContentWidth, h, lines);
    }

    private static int computeX(String text, int maxWidth, int horizontalAlignment) {
        switch (horizontalAlignment) {
            case 2:
                return maxWidth;
            case 3:
                int ret = maxWidth / 2;
                return ret;
            default:
                return 0;
        }
    }

    private static int computeY(Paint.FontMetricsInt fontMetricsInt, int constrainHeight, int totalHeight, int verticalAlignment) {
        int y = -fontMetricsInt.top;
        if (constrainHeight > totalHeight) {
            switch (verticalAlignment) {
                case 1:
                    return -fontMetricsInt.top;
                case 2:
                    return (-fontMetricsInt.top) + (constrainHeight - totalHeight);
                case 3:
                    return (-fontMetricsInt.top) + ((constrainHeight - totalHeight) / 2);
                default:
                    return y;
            }
        }
        return y;
    }

    private static String[] splitString(String string, int maxWidth, int maxHeight, Paint paint) {
        String[] lines = string.split("\\n");
        Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        int heightPerLine = (int) Math.ceil(fm.bottom - fm.top);
        int maxLines = maxHeight / heightPerLine;
        if (maxWidth != 0) {
            LinkedList<String> strList = new LinkedList<>();
            for (String line : lines) {
                int lineWidth = (int) Math.ceil(paint.measureText(line));
                if (lineWidth > maxWidth) {
                    strList.addAll(divideStringWithMaxWidth(line, maxWidth, paint));
                } else {
                    strList.add(line);
                }
                if (maxLines > 0 && strList.size() >= maxLines) {
                    break;
                }
            }
            if (maxLines > 0 && strList.size() > maxLines) {
                while (strList.size() > maxLines) {
                    strList.removeLast();
                }
            }
            String[] ret = new String[strList.size()];
            strList.toArray(ret);
            return ret;
        }
        if (maxHeight != 0 && lines.length > maxLines) {
            LinkedList<String> strList2 = new LinkedList<>();
            for (int i = 0; i < maxLines; i++) {
                strList2.add(lines[i]);
            }
            String[] ret2 = new String[strList2.size()];
            strList2.toArray(ret2);
            return ret2;
        }
        return lines;
    }

    private static LinkedList<String> divideStringWithMaxWidth(String string, int maxWidth, Paint paint) {
        int charLength = string.length();
        int start = 0;
        LinkedList<String> strList = new LinkedList<>();
        int i = 1;
        while (i <= charLength) {
            int tempWidth = (int) Math.ceil(paint.measureText(string, start, i));
            if (tempWidth >= maxWidth) {
                int lastIndexOfSpace = string.substring(0, i).lastIndexOf(" ");
                if (lastIndexOfSpace != -1 && lastIndexOfSpace > start) {
                    strList.add(string.substring(start, lastIndexOfSpace));
                    i = lastIndexOfSpace + 1;
                } else if (tempWidth > maxWidth && i != start + 1) {
                    strList.add(string.substring(start, i - 1));
                    i--;
                } else {
                    strList.add(string.substring(start, i));
                }
                while (i < charLength && string.charAt(i) == ' ') {
                    i++;
                }
                start = i;
            }
            i++;
        }
        if (start < charLength) {
            strList.add(string.substring(start));
        }
        return strList;
    }

    private static String refactorString(String string) {
        if (string.compareTo("") == 0) {
            return " ";
        }
        StringBuilder strBuilder = new StringBuilder(string);
        int start = 0;
        for (int index = strBuilder.indexOf("\n"); index != -1; index = strBuilder.indexOf("\n", start)) {
            if (index == 0 || strBuilder.charAt(index - 1) == '\n') {
                strBuilder.insert(start, " ");
                start = index + 2;
            } else {
                start = index + 1;
            }
            if (start > strBuilder.length() || index == strBuilder.length()) {
                break;
            }
        }
        return strBuilder.toString();
    }

    private static void initNativeObject(Bitmap bitmap) {
        byte[] pixels = getPixels(bitmap);
        if (pixels != null) {
            nativeInitBitmapDC(bitmap.getWidth(), bitmap.getHeight(), pixels);
        }
    }

    private static byte[] getPixels(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        byte[] pixels = new byte[bitmap.getWidth() * bitmap.getHeight() * 4];
        ByteBuffer buf = ByteBuffer.wrap(pixels);
        buf.order(ByteOrder.nativeOrder());
        bitmap.copyPixelsToBuffer(buf);
        return pixels;
    }

    private static int getFontSizeAccordingHeight(int height) {
        Paint paint = new Paint();
        Rect bounds = new Rect();
        paint.setTypeface(Typeface.DEFAULT);
        int incr_text_size = 1;
        boolean found_desired_size = false;
        while (!found_desired_size) {
            paint.setTextSize(incr_text_size);
            paint.getTextBounds("SghMNy", 0, "SghMNy".length(), bounds);
            incr_text_size++;
            if (height - bounds.height() <= 2) {
                found_desired_size = true;
            }
            Log.d("font size", "incr size:" + incr_text_size);
        }
        return incr_text_size;
    }

    private static String getStringWithEllipsis(String string, float width, float fontSize) {
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        TextPaint paint = new TextPaint();
        paint.setTypeface(Typeface.DEFAULT);
        paint.setTextSize(fontSize);
        return TextUtils.ellipsize(string, paint, width, TextUtils.TruncateAt.END).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TextProperty {
        private final int mHeightPerLine;
        private final String[] mLines;
        private final int mMaxWidth;
        private final int mTotalHeight;

        TextProperty(int maxWidth, int heightPerLine, String[] lines) {
            this.mMaxWidth = maxWidth;
            this.mHeightPerLine = heightPerLine;
            this.mTotalHeight = lines.length * heightPerLine;
            this.mLines = lines;
        }
    }
}
