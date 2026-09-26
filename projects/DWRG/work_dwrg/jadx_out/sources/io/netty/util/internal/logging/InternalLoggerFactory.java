package io.netty.util.internal.logging;

/* loaded from: classes.dex */
public abstract class InternalLoggerFactory {
    private static volatile InternalLoggerFactory defaultFactory = newDefaultFactory(InternalLoggerFactory.class.getName());

    protected abstract InternalLogger newInstance(String str);

    private static InternalLoggerFactory newDefaultFactory(String name) {
        try {
            InternalLoggerFactory f = new Slf4JLoggerFactory(true);
            f.newInstance(name).debug("Using SLF4J as the default logging framework");
            return f;
        } catch (Throwable th) {
            try {
                InternalLoggerFactory f2 = new Log4JLoggerFactory();
                f2.newInstance(name).debug("Using Log4J as the default logging framework");
                return f2;
            } catch (Throwable th2) {
                InternalLoggerFactory f3 = new JdkLoggerFactory();
                f3.newInstance(name).debug("Using java.util.logging as the default logging framework");
                return f3;
            }
        }
    }

    public static InternalLoggerFactory getDefaultFactory() {
        return defaultFactory;
    }

    public static void setDefaultFactory(InternalLoggerFactory defaultFactory2) {
        if (defaultFactory2 == null) {
            throw new NullPointerException("defaultFactory");
        }
        defaultFactory = defaultFactory2;
    }

    public static InternalLogger getInstance(Class<?> clazz) {
        return getInstance(clazz.getName());
    }

    public static InternalLogger getInstance(String name) {
        return getDefaultFactory().newInstance(name);
    }
}
