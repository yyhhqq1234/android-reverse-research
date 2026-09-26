package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public class DefaultHttpHeaders extends HttpHeaders {
    private static final int BUCKET_SIZE = 17;
    private final HeaderEntry[] entries;
    private final HeaderEntry head;
    protected final boolean validate;

    private static int index(int hash) {
        return hash % 17;
    }

    public DefaultHttpHeaders() {
        this(true);
    }

    public DefaultHttpHeaders(boolean validate) {
        this.entries = new HeaderEntry[17];
        this.head = new HeaderEntry();
        this.validate = validate;
        HeaderEntry headerEntry = this.head;
        HeaderEntry headerEntry2 = this.head;
        HeaderEntry headerEntry3 = this.head;
        headerEntry2.after = headerEntry3;
        headerEntry.before = headerEntry3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validateHeaderName0(CharSequence headerName) {
        validateHeaderName(headerName);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders add(HttpHeaders headers) {
        if (headers instanceof DefaultHttpHeaders) {
            DefaultHttpHeaders defaultHttpHeaders = (DefaultHttpHeaders) headers;
            for (HeaderEntry e = defaultHttpHeaders.head.after; e != defaultHttpHeaders.head; e = e.after) {
                add(e.key, e.value);
            }
            return this;
        }
        return super.add(headers);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders set(HttpHeaders headers) {
        if (headers instanceof DefaultHttpHeaders) {
            clear();
            DefaultHttpHeaders defaultHttpHeaders = (DefaultHttpHeaders) headers;
            for (HeaderEntry e = defaultHttpHeaders.head.after; e != defaultHttpHeaders.head; e = e.after) {
                add(e.key, e.value);
            }
            return this;
        }
        return super.set(headers);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders add(String name, Object value) {
        return add((CharSequence) name, value);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders add(CharSequence name, Object value) {
        CharSequence strVal;
        if (this.validate) {
            validateHeaderName0(name);
            strVal = toCharSequence(value);
            validateHeaderValue(strVal);
        } else {
            strVal = toCharSequence(value);
        }
        int h = hash(name);
        int i = index(h);
        add0(h, i, name, strVal);
        return this;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders add(String name, Iterable<?> values) {
        return add((CharSequence) name, values);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders add(CharSequence name, Iterable<?> values) {
        if (this.validate) {
            validateHeaderName0(name);
        }
        int h = hash(name);
        int i = index(h);
        for (Object v : values) {
            CharSequence vstr = toCharSequence(v);
            if (this.validate) {
                validateHeaderValue(vstr);
            }
            add0(h, i, name, vstr);
        }
        return this;
    }

    private void add0(int h, int i, CharSequence name, CharSequence value) {
        HeaderEntry e = this.entries[i];
        HeaderEntry[] headerEntryArr = this.entries;
        HeaderEntry newEntry = new HeaderEntry(h, name, value);
        headerEntryArr[i] = newEntry;
        newEntry.next = e;
        newEntry.addBefore(this.head);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders remove(String name) {
        return remove((CharSequence) name);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders remove(CharSequence name) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        int h = hash(name);
        int i = index(h);
        remove0(h, i, name);
        return this;
    }

    private void remove0(int h, int i, CharSequence name) {
        HeaderEntry e = this.entries[i];
        if (e != null) {
            while (e.hash == h && equalsIgnoreCase(name, e.key)) {
                e.remove();
                HeaderEntry next = e.next;
                if (next != null) {
                    this.entries[i] = next;
                    e = next;
                } else {
                    this.entries[i] = null;
                    return;
                }
            }
            while (true) {
                HeaderEntry next2 = e.next;
                if (next2 != null) {
                    if (next2.hash == h && equalsIgnoreCase(name, next2.key)) {
                        e.next = next2.next;
                        next2.remove();
                    } else {
                        e = next2;
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders set(String name, Object value) {
        return set((CharSequence) name, value);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders set(CharSequence name, Object value) {
        CharSequence strVal;
        if (this.validate) {
            validateHeaderName0(name);
            strVal = toCharSequence(value);
            validateHeaderValue(strVal);
        } else {
            strVal = toCharSequence(value);
        }
        int h = hash(name);
        int i = index(h);
        remove0(h, i, name);
        add0(h, i, name, strVal);
        return this;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders set(String name, Iterable<?> values) {
        return set((CharSequence) name, values);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders set(CharSequence name, Iterable<?> values) {
        Object v;
        if (values == null) {
            throw new NullPointerException("values");
        }
        if (this.validate) {
            validateHeaderName0(name);
        }
        int h = hash(name);
        int i = index(h);
        remove0(h, i, name);
        Iterator<?> it = values.iterator();
        while (it.hasNext() && (v = it.next()) != null) {
            CharSequence strVal = toCharSequence(v);
            if (this.validate) {
                validateHeaderValue(strVal);
            }
            add0(h, i, name, strVal);
        }
        return this;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public HttpHeaders clear() {
        Arrays.fill(this.entries, (Object) null);
        HeaderEntry headerEntry = this.head;
        HeaderEntry headerEntry2 = this.head;
        HeaderEntry headerEntry3 = this.head;
        headerEntry2.after = headerEntry3;
        headerEntry.before = headerEntry3;
        return this;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public String get(String name) {
        return get((CharSequence) name);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public String get(CharSequence name) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        int h = hash(name);
        int i = index(h);
        CharSequence value = null;
        for (HeaderEntry e = this.entries[i]; e != null; e = e.next) {
            if (e.hash == h && equalsIgnoreCase(name, e.key)) {
                value = e.value;
            }
        }
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public List<String> getAll(String name) {
        return getAll((CharSequence) name);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public List<String> getAll(CharSequence name) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        LinkedList<String> values = new LinkedList<>();
        int h = hash(name);
        int i = index(h);
        for (HeaderEntry e = this.entries[i]; e != null; e = e.next) {
            if (e.hash == h && equalsIgnoreCase(name, e.key)) {
                values.addFirst(e.getValue());
            }
        }
        return values;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public List<Map.Entry<String, String>> entries() {
        List<Map.Entry<String, String>> all = new LinkedList<>();
        for (HeaderEntry e = this.head.after; e != this.head; e = e.after) {
            all.add(e);
        }
        return all;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<String, String>> iterator() {
        return new HeaderIterator(this, null);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public boolean contains(String name) {
        return get(name) != null;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public boolean contains(CharSequence name) {
        return get(name) != null;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public boolean isEmpty() {
        return this.head == this.head.after;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public boolean contains(String name, String value, boolean ignoreCaseValue) {
        return contains((CharSequence) name, (CharSequence) value, ignoreCaseValue);
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public boolean contains(CharSequence name, CharSequence value, boolean ignoreCaseValue) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        int h = hash(name);
        int i = index(h);
        for (HeaderEntry e = this.entries[i]; e != null; e = e.next) {
            if (e.hash == h && equalsIgnoreCase(name, e.key)) {
                if (ignoreCaseValue) {
                    if (equalsIgnoreCase(e.value, value)) {
                        return true;
                    }
                } else if (e.value.equals(value)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public Set<String> names() {
        Set<String> names = new LinkedHashSet<>();
        for (HeaderEntry e = this.head.after; e != this.head; e = e.after) {
            names.add(e.getKey());
        }
        return names;
    }

    private static CharSequence toCharSequence(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof CharSequence) {
            return (CharSequence) value;
        }
        if (value instanceof Number) {
            return value.toString();
        }
        if (value instanceof Date) {
            return HttpHeaderDateFormat.get().format((Date) value);
        }
        if (value instanceof Calendar) {
            return HttpHeaderDateFormat.get().format(((Calendar) value).getTime());
        }
        return value.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode(ByteBuf buf) {
        for (HeaderEntry e = this.head.after; e != this.head; e = e.after) {
            e.encode(buf);
        }
    }

    /* loaded from: classes.dex */
    private final class HeaderIterator implements Iterator<Map.Entry<String, String>> {
        private HeaderEntry current;

        private HeaderIterator() {
            this.current = DefaultHttpHeaders.this.head;
        }

        /* synthetic */ HeaderIterator(DefaultHttpHeaders defaultHttpHeaders, HeaderIterator headerIterator) {
            this();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.current.after != DefaultHttpHeaders.this.head;
        }

        @Override // java.util.Iterator
        public Map.Entry<String, String> next() {
            this.current = this.current.after;
            if (this.current == DefaultHttpHeaders.this.head) {
                throw new NoSuchElementException();
            }
            return this.current;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class HeaderEntry implements Map.Entry<String, String> {
        HeaderEntry after;
        HeaderEntry before;
        final int hash;
        final CharSequence key;
        HeaderEntry next;
        CharSequence value;

        HeaderEntry(int hash, CharSequence key, CharSequence value) {
            this.hash = hash;
            this.key = key;
            this.value = value;
        }

        HeaderEntry() {
            this.hash = -1;
            this.key = null;
            this.value = null;
        }

        void remove() {
            this.before.after = this.after;
            this.after.before = this.before;
        }

        void addBefore(HeaderEntry e) {
            this.after = e;
            this.before = e.before;
            this.before.after = this;
            this.after.before = this;
        }

        @Override // java.util.Map.Entry
        public String getKey() {
            return this.key.toString();
        }

        @Override // java.util.Map.Entry
        public String getValue() {
            return this.value.toString();
        }

        @Override // java.util.Map.Entry
        public String setValue(String value) {
            if (value == null) {
                throw new NullPointerException("value");
            }
            DefaultHttpHeaders.validateHeaderValue(value);
            CharSequence oldValue = this.value;
            this.value = value;
            return oldValue.toString();
        }

        public String toString() {
            return String.valueOf(this.key.toString()) + '=' + this.value.toString();
        }

        void encode(ByteBuf buf) {
            HttpHeaders.encode(this.key, this.value, buf);
        }
    }
}
