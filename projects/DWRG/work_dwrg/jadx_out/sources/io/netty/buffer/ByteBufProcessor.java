package io.netty.buffer;

/* loaded from: classes.dex */
public interface ByteBufProcessor {
    public static final ByteBufProcessor FIND_NUL = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.1
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value != 0;
        }
    };
    public static final ByteBufProcessor FIND_NON_NUL = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.2
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value == 0;
        }
    };
    public static final ByteBufProcessor FIND_CR = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.3
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value != 13;
        }
    };
    public static final ByteBufProcessor FIND_NON_CR = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.4
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value == 13;
        }
    };
    public static final ByteBufProcessor FIND_LF = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.5
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value != 10;
        }
    };
    public static final ByteBufProcessor FIND_NON_LF = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.6
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value == 10;
        }
    };
    public static final ByteBufProcessor FIND_CRLF = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.7
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return (value == 13 || value == 10) ? false : true;
        }
    };
    public static final ByteBufProcessor FIND_NON_CRLF = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.8
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value == 13 || value == 10;
        }
    };
    public static final ByteBufProcessor FIND_LINEAR_WHITESPACE = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.9
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return (value == 32 || value == 9) ? false : true;
        }
    };
    public static final ByteBufProcessor FIND_NON_LINEAR_WHITESPACE = new ByteBufProcessor() { // from class: io.netty.buffer.ByteBufProcessor.10
        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            return value == 32 || value == 9;
        }
    };

    boolean process(byte b) throws Exception;
}
