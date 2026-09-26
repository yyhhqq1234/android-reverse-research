package com.google.zxing.aztec;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class AztecReader implements Reader {
    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap image) throws NotFoundException, FormatException {
        return decode(image, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.Result decode(com.google.zxing.BinaryBitmap r24, java.util.Map<com.google.zxing.DecodeHintType, ?> r25) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException {
        /*
            r23 = this;
            r20 = 0
            r17 = 0
            com.google.zxing.aztec.detector.Detector r13 = new com.google.zxing.aztec.detector.Detector
            com.google.zxing.common.BitMatrix r3 = r24.getBlackMatrix()
            r13.<init>(r3)
            r6 = 0
            r12 = 0
            r3 = 0
            com.google.zxing.aztec.AztecDetectorResult r14 = r13.detect(r3)     // Catch: com.google.zxing.NotFoundException -> L5b com.google.zxing.FormatException -> L5d
            com.google.zxing.ResultPoint[] r6 = r14.getPoints()     // Catch: com.google.zxing.NotFoundException -> L5b com.google.zxing.FormatException -> L5d
            com.google.zxing.aztec.decoder.Decoder r3 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.NotFoundException -> L5b com.google.zxing.FormatException -> L5d
            r3.<init>()     // Catch: com.google.zxing.NotFoundException -> L5b com.google.zxing.FormatException -> L5d
            com.google.zxing.common.DecoderResult r12 = r3.decode(r14)     // Catch: com.google.zxing.NotFoundException -> L5b com.google.zxing.FormatException -> L5d
        L21:
            if (r12 != 0) goto L35
            r3 = 1
            com.google.zxing.aztec.AztecDetectorResult r14 = r13.detect(r3)     // Catch: com.google.zxing.NotFoundException -> L5f com.google.zxing.FormatException -> L98
            com.google.zxing.ResultPoint[] r6 = r14.getPoints()     // Catch: com.google.zxing.NotFoundException -> L5f com.google.zxing.FormatException -> L98
            com.google.zxing.aztec.decoder.Decoder r3 = new com.google.zxing.aztec.decoder.Decoder     // Catch: com.google.zxing.NotFoundException -> L5f com.google.zxing.FormatException -> L98
            r3.<init>()     // Catch: com.google.zxing.NotFoundException -> L5f com.google.zxing.FormatException -> L98
            com.google.zxing.common.DecoderResult r12 = r3.decode(r14)     // Catch: com.google.zxing.NotFoundException -> L5f com.google.zxing.FormatException -> L98
        L35:
            if (r25 == 0) goto L68
            com.google.zxing.DecodeHintType r3 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            r0 = r25
            java.lang.Object r22 = r0.get(r3)
            com.google.zxing.ResultPointCallback r22 = (com.google.zxing.ResultPointCallback) r22
            if (r22 == 0) goto L68
            r10 = r6
            int r0 = r6.length
            r19 = r0
            r18 = 0
        L49:
            r0 = r18
            r1 = r19
            if (r0 >= r1) goto L68
            r21 = r10[r18]
            r0 = r22
            r1 = r21
            r0.foundPossibleResultPoint(r1)
            int r18 = r18 + 1
            goto L49
        L5b:
            r20 = move-exception
            goto L21
        L5d:
            r17 = move-exception
            goto L21
        L5f:
            r3 = move-exception
            r15 = r3
        L61:
            if (r20 == 0) goto L64
            throw r20
        L64:
            if (r17 == 0) goto L67
            throw r17
        L67:
            throw r15
        L68:
            com.google.zxing.Result r2 = new com.google.zxing.Result
            java.lang.String r3 = r12.getText()
            byte[] r4 = r12.getRawBytes()
            int r5 = r12.getNumBits()
            com.google.zxing.BarcodeFormat r7 = com.google.zxing.BarcodeFormat.AZTEC
            long r8 = java.lang.System.currentTimeMillis()
            r2.<init>(r3, r4, r5, r6, r7, r8)
            java.util.List r11 = r12.getByteSegments()
            if (r11 == 0) goto L8a
            com.google.zxing.ResultMetadataType r3 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r2.putMetadata(r3, r11)
        L8a:
            java.lang.String r16 = r12.getECLevel()
            if (r16 == 0) goto L97
            com.google.zxing.ResultMetadataType r3 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r0 = r16
            r2.putMetadata(r3, r0)
        L97:
            return r2
        L98:
            r3 = move-exception
            r15 = r3
            goto L61
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.AztecReader.decode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }
}
