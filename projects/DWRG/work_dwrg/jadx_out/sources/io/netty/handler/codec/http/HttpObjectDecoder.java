package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufProcessor;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.ReplayingDecoder;
import io.netty.handler.codec.TooLongFrameException;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.util.internal.AppendableCharSequence;
import java.util.List;

/* loaded from: classes.dex */
public abstract class HttpObjectDecoder extends ReplayingDecoder<State> {
    private static /* synthetic */ int[] $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State;
    static final /* synthetic */ boolean $assertionsDisabled;
    private long chunkSize;
    private final boolean chunkedSupported;
    private long contentLength;
    private final HeaderParser headerParser;
    private int headerSize;
    private final LineParser lineParser;
    private final int maxChunkSize;
    private final int maxHeaderSize;
    private final int maxInitialLineLength;
    private HttpMessage message;
    private final AppendableCharSequence seq;
    protected final boolean validateHeaders;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum State {
        SKIP_CONTROL_CHARS,
        READ_INITIAL,
        READ_HEADER,
        READ_VARIABLE_LENGTH_CONTENT,
        READ_FIXED_LENGTH_CONTENT,
        READ_CHUNK_SIZE,
        READ_CHUNKED_CONTENT,
        READ_CHUNK_DELIMITER,
        READ_CHUNK_FOOTER,
        BAD_MESSAGE,
        UPGRADED;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static State[] valuesCustom() {
            State[] valuesCustom = values();
            int length = valuesCustom.length;
            State[] stateArr = new State[length];
            System.arraycopy(valuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }
    }

    protected abstract HttpMessage createInvalidMessage();

    protected abstract HttpMessage createMessage(String[] strArr) throws Exception;

    protected abstract boolean isDecodingRequest();

    static /* synthetic */ int[] $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State() {
        int[] iArr = $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State;
        if (iArr == null) {
            iArr = new int[State.valuesCustom().length];
            try {
                iArr[State.BAD_MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[State.READ_CHUNKED_CONTENT.ordinal()] = 7;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[State.READ_CHUNK_DELIMITER.ordinal()] = 8;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[State.READ_CHUNK_FOOTER.ordinal()] = 9;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[State.READ_CHUNK_SIZE.ordinal()] = 6;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[State.READ_FIXED_LENGTH_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[State.READ_HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[State.READ_INITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[State.READ_VARIABLE_LENGTH_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[State.SKIP_CONTROL_CHARS.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[State.UPGRADED.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State = iArr;
        }
        return iArr;
    }

    static {
        $assertionsDisabled = !HttpObjectDecoder.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpObjectDecoder() {
        this(4096, 8192, 8192, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpObjectDecoder(int maxInitialLineLength, int maxHeaderSize, int maxChunkSize, boolean chunkedSupported) {
        this(maxInitialLineLength, maxHeaderSize, maxChunkSize, chunkedSupported, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpObjectDecoder(int maxInitialLineLength, int maxHeaderSize, int maxChunkSize, boolean chunkedSupported, boolean validateHeaders) {
        super(State.SKIP_CONTROL_CHARS);
        this.seq = new AppendableCharSequence(128);
        this.headerParser = new HeaderParser(this.seq);
        this.lineParser = new LineParser(this.seq);
        this.contentLength = Long.MIN_VALUE;
        if (maxInitialLineLength <= 0) {
            throw new IllegalArgumentException("maxInitialLineLength must be a positive integer: " + maxInitialLineLength);
        }
        if (maxHeaderSize <= 0) {
            throw new IllegalArgumentException("maxHeaderSize must be a positive integer: " + maxHeaderSize);
        }
        if (maxChunkSize <= 0) {
            throw new IllegalArgumentException("maxChunkSize must be a positive integer: " + maxChunkSize);
        }
        this.maxInitialLineLength = maxInitialLineLength;
        this.maxHeaderSize = maxHeaderSize;
        this.maxChunkSize = maxChunkSize;
        this.chunkedSupported = chunkedSupported;
        this.validateHeaders = validateHeaders;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0010. Please report as an issue. */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public void decode(ChannelHandlerContext ctx, ByteBuf buffer, List<Object> out) throws Exception {
        switch ($SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State()[state().ordinal()]) {
            case 1:
                try {
                    skipControlCharacters(buffer);
                    checkpoint(State.READ_INITIAL);
                } finally {
                    checkpoint();
                }
            case 2:
                try {
                    String[] initialLine = splitInitialLine(this.lineParser.parse(buffer));
                    if (initialLine.length < 3) {
                        checkpoint(State.SKIP_CONTROL_CHARS);
                        return;
                    } else {
                        this.message = createMessage(initialLine);
                        checkpoint(State.READ_HEADER);
                    }
                } catch (Exception e) {
                    out.add(invalidMessage(e));
                    return;
                }
            case 3:
                try {
                    State nextState = readHeaders(buffer);
                    checkpoint(nextState);
                    if (nextState == State.READ_CHUNK_SIZE) {
                        if (!this.chunkedSupported) {
                            throw new IllegalArgumentException("Chunked messages not supported");
                        }
                        out.add(this.message);
                        return;
                    }
                    if (nextState == State.SKIP_CONTROL_CHARS) {
                        out.add(this.message);
                        out.add(LastHttpContent.EMPTY_LAST_CONTENT);
                        reset();
                        return;
                    }
                    long contentLength = contentLength();
                    if (contentLength == 0 || (contentLength == -1 && isDecodingRequest())) {
                        out.add(this.message);
                        out.add(LastHttpContent.EMPTY_LAST_CONTENT);
                        reset();
                        return;
                    } else {
                        if (!$assertionsDisabled && nextState != State.READ_FIXED_LENGTH_CONTENT && nextState != State.READ_VARIABLE_LENGTH_CONTENT) {
                            throw new AssertionError();
                        }
                        out.add(this.message);
                        if (nextState == State.READ_FIXED_LENGTH_CONTENT) {
                            this.chunkSize = contentLength;
                            return;
                        }
                        return;
                    }
                } catch (Exception e2) {
                    out.add(invalidMessage(e2));
                    return;
                }
            case 4:
                int toRead = Math.min(actualReadableBytes(), this.maxChunkSize);
                if (toRead > 0) {
                    ByteBuf content = ByteBufUtil.readBytes(ctx.alloc(), buffer, toRead);
                    if (buffer.isReadable()) {
                        out.add(new DefaultHttpContent(content));
                        return;
                    } else {
                        out.add(new DefaultLastHttpContent(content, this.validateHeaders));
                        reset();
                        return;
                    }
                }
                if (!buffer.isReadable()) {
                    out.add(LastHttpContent.EMPTY_LAST_CONTENT);
                    reset();
                    return;
                }
                return;
            case 5:
                int readLimit = actualReadableBytes();
                if (readLimit != 0) {
                    int toRead2 = Math.min(readLimit, this.maxChunkSize);
                    if (toRead2 > this.chunkSize) {
                        toRead2 = (int) this.chunkSize;
                    }
                    ByteBuf content2 = ByteBufUtil.readBytes(ctx.alloc(), buffer, toRead2);
                    this.chunkSize -= toRead2;
                    if (this.chunkSize == 0) {
                        out.add(new DefaultLastHttpContent(content2, this.validateHeaders));
                        reset();
                        return;
                    } else {
                        out.add(new DefaultHttpContent(content2));
                        return;
                    }
                }
                return;
            case 6:
                try {
                    AppendableCharSequence line = this.lineParser.parse(buffer);
                    int chunkSize = getChunkSize(line.toString());
                    this.chunkSize = chunkSize;
                    if (chunkSize == 0) {
                        checkpoint(State.READ_CHUNK_FOOTER);
                        return;
                    }
                    checkpoint(State.READ_CHUNKED_CONTENT);
                } catch (Exception e3) {
                    out.add(invalidChunk(e3));
                    return;
                }
            case 7:
                if (!$assertionsDisabled && this.chunkSize > 2147483647L) {
                    throw new AssertionError();
                }
                int toRead3 = Math.min((int) this.chunkSize, this.maxChunkSize);
                HttpContent chunk = new DefaultHttpContent(ByteBufUtil.readBytes(ctx.alloc(), buffer, toRead3));
                this.chunkSize -= toRead3;
                out.add(chunk);
                if (this.chunkSize == 0) {
                    checkpoint(State.READ_CHUNK_DELIMITER);
                } else {
                    return;
                }
                break;
            case 8:
                while (true) {
                    byte next = buffer.readByte();
                    if (next == 13) {
                        if (buffer.readByte() == 10) {
                            checkpoint(State.READ_CHUNK_SIZE);
                            return;
                        }
                    } else if (next == 10) {
                        checkpoint(State.READ_CHUNK_SIZE);
                        return;
                    }
                }
            case 9:
                try {
                    LastHttpContent trailer = readTrailingHeaders(buffer);
                    out.add(trailer);
                    reset();
                    return;
                } catch (Exception e4) {
                    out.add(invalidChunk(e4));
                    return;
                }
            case 10:
                buffer.skipBytes(actualReadableBytes());
                return;
            case 11:
                int readableBytes = actualReadableBytes();
                if (readableBytes > 0) {
                    out.add(buffer.readBytes(actualReadableBytes()));
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public void decodeLast(ChannelHandlerContext ctx, ByteBuf in, List<Object> out) throws Exception {
        boolean prematureClosure;
        decode(ctx, in, out);
        if (this.message != null) {
            if (isDecodingRequest()) {
                prematureClosure = true;
            } else {
                prematureClosure = contentLength() > 0;
            }
            reset();
            if (!prematureClosure) {
                out.add(LastHttpContent.EMPTY_LAST_CONTENT);
            }
        }
    }

    protected boolean isContentAlwaysEmpty(HttpMessage msg) {
        if (!(msg instanceof HttpResponse)) {
            return false;
        }
        HttpResponse res = (HttpResponse) msg;
        int code = res.getStatus().code();
        if (code >= 100 && code < 200) {
            return code != 101 || res.headers().contains(HttpHeaders.Names.SEC_WEBSOCKET_ACCEPT);
        }
        switch (code) {
            case 204:
            case 205:
            case 304:
                return true;
            default:
                return false;
        }
    }

    private void reset() {
        HttpResponse res;
        HttpMessage message = this.message;
        this.message = null;
        this.contentLength = Long.MIN_VALUE;
        if (!isDecodingRequest() && (res = (HttpResponse) message) != null && res.getStatus().code() == 101) {
            checkpoint(State.UPGRADED);
        } else {
            checkpoint(State.SKIP_CONTROL_CHARS);
        }
    }

    private HttpMessage invalidMessage(Exception cause) {
        checkpoint(State.BAD_MESSAGE);
        if (this.message != null) {
            this.message.setDecoderResult(DecoderResult.failure(cause));
        } else {
            this.message = createInvalidMessage();
            this.message.setDecoderResult(DecoderResult.failure(cause));
        }
        HttpMessage ret = this.message;
        this.message = null;
        return ret;
    }

    private HttpContent invalidChunk(Exception cause) {
        checkpoint(State.BAD_MESSAGE);
        HttpContent chunk = new DefaultLastHttpContent(Unpooled.EMPTY_BUFFER);
        chunk.setDecoderResult(DecoderResult.failure(cause));
        this.message = null;
        return chunk;
    }

    private static void skipControlCharacters(ByteBuf buffer) {
        while (true) {
            char c = (char) buffer.readUnsignedByte();
            if (!Character.isISOControl(c) && !Character.isWhitespace(c)) {
                buffer.readerIndex(buffer.readerIndex() - 1);
                return;
            }
        }
    }

    private State readHeaders(ByteBuf buffer) {
        this.headerSize = 0;
        HttpMessage message = this.message;
        HttpHeaders headers = message.headers();
        AppendableCharSequence line = this.headerParser.parse(buffer);
        String name = null;
        String value = null;
        if (line.length() > 0) {
            headers.clear();
            do {
                char firstChar = line.charAt(0);
                if (name != null && (firstChar == ' ' || firstChar == '\t')) {
                    value = String.valueOf(value) + ' ' + line.toString().trim();
                } else {
                    if (name != null) {
                        headers.add(name, (Object) value);
                    }
                    String[] header = splitHeader(line);
                    name = header[0];
                    value = header[1];
                }
                line = this.headerParser.parse(buffer);
            } while (line.length() > 0);
            if (name != null) {
                headers.add(name, (Object) value);
            }
        }
        if (isContentAlwaysEmpty(message)) {
            HttpHeaders.removeTransferEncodingChunked(message);
            State nextState = State.SKIP_CONTROL_CHARS;
            return nextState;
        }
        if (HttpHeaders.isTransferEncodingChunked(message)) {
            State nextState2 = State.READ_CHUNK_SIZE;
            return nextState2;
        }
        if (contentLength() >= 0) {
            State nextState3 = State.READ_FIXED_LENGTH_CONTENT;
            return nextState3;
        }
        State nextState4 = State.READ_VARIABLE_LENGTH_CONTENT;
        return nextState4;
    }

    private long contentLength() {
        if (this.contentLength == Long.MIN_VALUE) {
            this.contentLength = HttpHeaders.getContentLength(this.message, -1L);
        }
        return this.contentLength;
    }

    private LastHttpContent readTrailingHeaders(ByteBuf buffer) {
        this.headerSize = 0;
        AppendableCharSequence line = this.headerParser.parse(buffer);
        String lastHeader = null;
        if (line.length() > 0) {
            LastHttpContent trailer = new DefaultLastHttpContent(Unpooled.EMPTY_BUFFER, this.validateHeaders);
            do {
                char firstChar = line.charAt(0);
                if (lastHeader != null && (firstChar == ' ' || firstChar == '\t')) {
                    List<String> current = trailer.trailingHeaders().getAll(lastHeader);
                    if (!current.isEmpty()) {
                        int lastPos = current.size() - 1;
                        String newString = String.valueOf(current.get(lastPos)) + line.toString().trim();
                        current.set(lastPos, newString);
                    }
                } else {
                    String[] header = splitHeader(line);
                    String name = header[0];
                    if (!HttpHeaders.equalsIgnoreCase(name, HttpHeaders.Names.CONTENT_LENGTH) && !HttpHeaders.equalsIgnoreCase(name, HttpHeaders.Names.TRANSFER_ENCODING) && !HttpHeaders.equalsIgnoreCase(name, HttpHeaders.Names.TRAILER)) {
                        trailer.trailingHeaders().add(name, (Object) header[1]);
                    }
                    lastHeader = name;
                }
                line = this.headerParser.parse(buffer);
            } while (line.length() > 0);
            return trailer;
        }
        return LastHttpContent.EMPTY_LAST_CONTENT;
    }

    private static int getChunkSize(String hex) {
        String hex2 = hex.trim();
        for (int i = 0; i < hex2.length(); i++) {
            char c = hex2.charAt(i);
            if (c == ';' || Character.isWhitespace(c) || Character.isISOControl(c)) {
                hex2 = hex2.substring(0, i);
                break;
            }
        }
        return Integer.parseInt(hex2, 16);
    }

    private static String[] splitInitialLine(AppendableCharSequence sb) {
        int aStart = findNonWhitespace(sb, 0);
        int aEnd = findWhitespace(sb, aStart);
        int bStart = findNonWhitespace(sb, aEnd);
        int bEnd = findWhitespace(sb, bStart);
        int cStart = findNonWhitespace(sb, bEnd);
        int cEnd = findEndOfString(sb);
        String[] strArr = new String[3];
        strArr[0] = sb.substring(aStart, aEnd);
        strArr[1] = sb.substring(bStart, bEnd);
        strArr[2] = cStart < cEnd ? sb.substring(cStart, cEnd) : "";
        return strArr;
    }

    private static String[] splitHeader(AppendableCharSequence sb) {
        int length = sb.length();
        int nameStart = findNonWhitespace(sb, 0);
        int nameEnd = nameStart;
        while (nameEnd < length) {
            char ch = sb.charAt(nameEnd);
            if (ch == ':' || Character.isWhitespace(ch)) {
                break;
            }
            nameEnd++;
        }
        int colonEnd = nameEnd;
        while (true) {
            if (colonEnd >= length) {
                break;
            }
            if (sb.charAt(colonEnd) != ':') {
                colonEnd++;
            } else {
                colonEnd++;
                break;
            }
        }
        int valueStart = findNonWhitespace(sb, colonEnd);
        if (valueStart == length) {
            return new String[]{sb.substring(nameStart, nameEnd), ""};
        }
        int valueEnd = findEndOfString(sb);
        return new String[]{sb.substring(nameStart, nameEnd), sb.substring(valueStart, valueEnd)};
    }

    private static int findNonWhitespace(CharSequence sb, int offset) {
        int result = offset;
        while (result < sb.length() && Character.isWhitespace(sb.charAt(result))) {
            result++;
        }
        return result;
    }

    private static int findWhitespace(CharSequence sb, int offset) {
        int result = offset;
        while (result < sb.length() && !Character.isWhitespace(sb.charAt(result))) {
            result++;
        }
        return result;
    }

    private static int findEndOfString(CharSequence sb) {
        int result = sb.length();
        while (result > 0 && Character.isWhitespace(sb.charAt(result - 1))) {
            result--;
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class HeaderParser implements ByteBufProcessor {
        private final AppendableCharSequence seq;

        HeaderParser(AppendableCharSequence seq) {
            this.seq = seq;
        }

        public AppendableCharSequence parse(ByteBuf buffer) {
            this.seq.reset();
            HttpObjectDecoder.this.headerSize = 0;
            int i = buffer.forEachByte(this);
            buffer.readerIndex(i + 1);
            return this.seq;
        }

        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            char nextByte = (char) value;
            HttpObjectDecoder.this.headerSize++;
            if (nextByte == '\r') {
                return true;
            }
            if (nextByte != '\n') {
                if (HttpObjectDecoder.this.headerSize >= HttpObjectDecoder.this.maxHeaderSize) {
                    throw new TooLongFrameException("HTTP header is larger than " + HttpObjectDecoder.this.maxHeaderSize + " bytes.");
                }
                this.seq.append(nextByte);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class LineParser implements ByteBufProcessor {
        private final AppendableCharSequence seq;
        private int size;

        LineParser(AppendableCharSequence seq) {
            this.seq = seq;
        }

        public AppendableCharSequence parse(ByteBuf buffer) {
            this.seq.reset();
            this.size = 0;
            int i = buffer.forEachByte(this);
            buffer.readerIndex(i + 1);
            return this.seq;
        }

        @Override // io.netty.buffer.ByteBufProcessor
        public boolean process(byte value) throws Exception {
            char nextByte = (char) value;
            if (nextByte == '\r') {
                return true;
            }
            if (nextByte != '\n') {
                if (this.size >= HttpObjectDecoder.this.maxInitialLineLength) {
                    throw new TooLongFrameException("An HTTP line is larger than " + HttpObjectDecoder.this.maxInitialLineLength + " bytes.");
                }
                this.size++;
                this.seq.append(nextByte);
                return true;
            }
            return false;
        }
    }
}
