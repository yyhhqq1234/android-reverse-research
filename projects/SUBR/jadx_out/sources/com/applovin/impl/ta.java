package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Charsets;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class ta extends dk {
    private static final Pattern c = Pattern.compile("(.+?)='(.*?)';", 32);
    private final CharsetDecoder a = Charsets.UTF_8.newDecoder();
    private final CharsetDecoder b = Charsets.ISO_8859_1.newDecoder();

    @Override // com.applovin.impl.dk
    protected af a(df dfVar, ByteBuffer byteBuffer) {
        String strA = a(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (strA == null) {
            return new af(new va(bArr, null, null));
        }
        Matcher matcher = c.matcher(strA);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String lowerCase = Ascii.toLowerCase(strGroup);
                lowerCase.hashCode();
                if (lowerCase.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (lowerCase.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new af(new va(bArr, str, str2));
    }

    private String a(ByteBuffer byteBuffer) {
        try {
            String string = this.a.decode(byteBuffer).toString();
            this.a.reset();
            byteBuffer.rewind();
            return string;
        } catch (CharacterCodingException unused) {
            this.a.reset();
            byteBuffer.rewind();
            try {
                return this.b.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.b.reset();
                byteBuffer.rewind();
            }
        } catch (Throwable th) {
            this.a.reset();
            byteBuffer.rewind();
            throw th;
        }
    }
}
