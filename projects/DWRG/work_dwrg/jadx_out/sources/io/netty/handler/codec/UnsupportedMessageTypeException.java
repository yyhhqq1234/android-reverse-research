package io.netty.handler.codec;

/* loaded from: classes.dex */
public class UnsupportedMessageTypeException extends CodecException {
    private static final long serialVersionUID = 2799598826487038726L;

    public UnsupportedMessageTypeException(Object message, Class<?>... clsArr) {
        super(message(message == null ? "null" : message.getClass().getName(), clsArr));
    }

    public UnsupportedMessageTypeException() {
    }

    public UnsupportedMessageTypeException(String message, Throwable cause) {
        super(message, cause);
    }

    public UnsupportedMessageTypeException(String s) {
        super(s);
    }

    public UnsupportedMessageTypeException(Throwable cause) {
        super(cause);
    }

    private static String message(String actualType, Class<?>... clsArr) {
        Class<?> t;
        StringBuilder buf = new StringBuilder(actualType);
        if (clsArr != null && clsArr.length > 0) {
            buf.append(" (expected: ").append(clsArr[0].getName());
            for (int i = 1; i < clsArr.length && (t = clsArr[i]) != null; i++) {
                buf.append(", ").append(t.getName());
            }
            buf.append(')');
        }
        return buf.toString();
    }
}
