package io.netty.util.internal.logging;

import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import org.slf4j.LoggerFactory;
import org.slf4j.helpers.NOPLoggerFactory;

/* loaded from: classes.dex */
public class Slf4JLoggerFactory extends InternalLoggerFactory {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Slf4JLoggerFactory.class.desiredAssertionStatus();
    }

    public Slf4JLoggerFactory() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Slf4JLoggerFactory(boolean failIfNOP) {
        if (!$assertionsDisabled && !failIfNOP) {
            throw new AssertionError();
        }
        final StringBuffer buf = new StringBuffer();
        PrintStream err = System.err;
        try {
            System.setErr(new PrintStream(new OutputStream() { // from class: io.netty.util.internal.logging.Slf4JLoggerFactory.1
                @Override // java.io.OutputStream
                public void write(int b) {
                    buf.append((char) b);
                }
            }, true, "US-ASCII"));
            try {
                if (LoggerFactory.getILoggerFactory() instanceof NOPLoggerFactory) {
                    throw new NoClassDefFoundError(buf.toString());
                }
                err.print(buf);
                err.flush();
            } finally {
                System.setErr(err);
            }
        } catch (UnsupportedEncodingException e) {
            throw new Error(e);
        }
    }

    @Override // io.netty.util.internal.logging.InternalLoggerFactory
    public InternalLogger newInstance(String name) {
        return new Slf4JLogger(LoggerFactory.getLogger(name));
    }
}
