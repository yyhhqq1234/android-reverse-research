package io.netty.util.internal.logging;

import java.util.logging.Logger;

/* loaded from: classes.dex */
public class JdkLoggerFactory extends InternalLoggerFactory {
    @Override // io.netty.util.internal.logging.InternalLoggerFactory
    public InternalLogger newInstance(String name) {
        return new JdkLogger(Logger.getLogger(name));
    }
}
