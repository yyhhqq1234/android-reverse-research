package com.netease.mobsecurity;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class SecException extends Exception {
    public static final int a = -100;
    private int b;

    public SecException(int i) {
        this.b = i;
    }

    public SecException(String str, int i) {
        super(str);
        this.b = i;
    }

    public SecException(String str, Throwable th, int i) {
        super(str, th);
        this.b = i;
    }

    public SecException(Throwable th, int i) {
        super(th);
        this.b = i;
    }

    public int getErrorCode() {
        return this.b;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStream.println("ErrorCode = " + getErrorCode());
        super.printStackTrace(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printWriter.println("ErrorCode = " + getErrorCode());
        super.printStackTrace(printWriter);
    }

    public void setErrorCode(int i) {
        this.b = i;
    }
}
