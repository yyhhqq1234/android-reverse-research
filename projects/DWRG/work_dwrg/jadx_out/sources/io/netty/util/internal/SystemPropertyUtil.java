package io.netty.util.internal;

import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class SystemPropertyUtil {
    private static boolean initializedLogger;
    private static boolean loggedException;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) SystemPropertyUtil.class);
    private static final Pattern INTEGER_PATTERN = Pattern.compile("-?[0-9]+");

    static {
        initializedLogger = false;
        initializedLogger = true;
    }

    public static boolean contains(String key) {
        return get(key) != null;
    }

    public static String get(String key) {
        return get(key, null);
    }

    public static String get(final String key, String def) {
        if (key == null) {
            throw new NullPointerException("key");
        }
        if (key.isEmpty()) {
            throw new IllegalArgumentException("key must not be empty.");
        }
        String value = null;
        try {
            if (System.getSecurityManager() == null) {
                value = System.getProperty(key);
            } else {
                value = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: io.netty.util.internal.SystemPropertyUtil.1
                    @Override // java.security.PrivilegedAction
                    public String run() {
                        return System.getProperty(key);
                    }
                });
            }
        } catch (Exception e) {
            if (!loggedException) {
                log("Unable to retrieve a system property '" + key + "'; default values will be used.", e);
                loggedException = true;
            }
        }
        if (value == null) {
            return def;
        }
        String def2 = value;
        return def2;
    }

    public static boolean getBoolean(String key, boolean def) {
        String value = get(key);
        if (value != null) {
            String value2 = value.trim().toLowerCase();
            if (value2.isEmpty()) {
                return true;
            }
            if ("true".equals(value2) || "yes".equals(value2) || "1".equals(value2)) {
                return true;
            }
            if ("false".equals(value2) || "no".equals(value2) || "0".equals(value2)) {
                return false;
            }
            log("Unable to parse the boolean system property '" + key + "':" + value2 + " - using the default value: " + def);
            return def;
        }
        return def;
    }

    public static int getInt(String key, int def) {
        String value = get(key);
        if (value != null) {
            String value2 = value.trim().toLowerCase();
            if (INTEGER_PATTERN.matcher(value2).matches()) {
                try {
                    return Integer.parseInt(value2);
                } catch (Exception e) {
                }
            }
            log("Unable to parse the integer system property '" + key + "':" + value2 + " - using the default value: " + def);
            return def;
        }
        return def;
    }

    public static long getLong(String key, long def) {
        String value = get(key);
        if (value != null) {
            String value2 = value.trim().toLowerCase();
            if (INTEGER_PATTERN.matcher(value2).matches()) {
                try {
                    return Long.parseLong(value2);
                } catch (Exception e) {
                }
            }
            log("Unable to parse the long integer system property '" + key + "':" + value2 + " - using the default value: " + def);
            return def;
        }
        return def;
    }

    private static void log(String msg) {
        if (initializedLogger) {
            logger.warn(msg);
        } else {
            Logger.getLogger(SystemPropertyUtil.class.getName()).log(Level.WARNING, msg);
        }
    }

    private static void log(String msg, Exception e) {
        if (initializedLogger) {
            logger.warn(msg, (Throwable) e);
        } else {
            Logger.getLogger(SystemPropertyUtil.class.getName()).log(Level.WARNING, msg, (Throwable) e);
        }
    }

    private SystemPropertyUtil() {
    }
}
