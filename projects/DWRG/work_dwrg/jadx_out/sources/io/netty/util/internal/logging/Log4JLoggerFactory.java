package io.netty.util.internal.logging;

import org.apache.log4j.Logger;

/* loaded from: classes.dex */
public class Log4JLoggerFactory extends InternalLoggerFactory {
    @Override // io.netty.util.internal.logging.InternalLoggerFactory
    public InternalLogger newInstance(String name) {
        return new Log4JLogger(Logger.getLogger(name));
    }
}
