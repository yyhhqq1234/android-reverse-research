package io.netty.util.internal.chmv8;

import io.netty.util.internal.IntegerHolder;
import io.netty.util.internal.InternalThreadLocalMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public class ConcurrentHashMapV8<K, V> implements ConcurrentMap<K, V>, Serializable {
    private static final long ABASE;
    private static final int ASHIFT;
    private static final long BASECOUNT;
    private static final long CELLSBUSY;
    private static final long CELLVALUE;
    private static final int DEFAULT_CAPACITY = 16;
    private static final int DEFAULT_CONCURRENCY_LEVEL = 16;
    static final int HASH_BITS = Integer.MAX_VALUE;
    private static final float LOAD_FACTOR = 0.75f;
    private static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_ARRAY_SIZE = 2147483639;
    private static final int MIN_TRANSFER_STRIDE = 16;
    static final int MIN_TREEIFY_CAPACITY = 64;
    static final int MOVED = -1;
    static final int RESERVED = -3;
    static final int SEED_INCREMENT = 1640531527;
    private static final long SIZECTL;
    private static final long TRANSFERINDEX;
    private static final long TRANSFERORIGIN;
    static final int TREEBIN = -2;
    static final int TREEIFY_THRESHOLD = 8;
    private static final Unsafe U;
    static final int UNTREEIFY_THRESHOLD = 6;
    private static final long serialVersionUID = 7249069246763182397L;
    private volatile transient long baseCount;
    private volatile transient int cellsBusy;
    private volatile transient CounterCell[] counterCells;
    private transient EntrySetView<K, V> entrySet;
    private transient KeySetView<K, V> keySet;
    private volatile transient Node<K, V>[] nextTable;
    private volatile transient int sizeCtl;
    volatile transient Node<K, V>[] table;
    private volatile transient int transferIndex;
    private volatile transient int transferOrigin;
    private transient ValuesView<K, V> values;
    static final int NCPU = Runtime.getRuntime().availableProcessors();
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("segments", Segment[].class), new ObjectStreamField("segmentMask", Integer.TYPE), new ObjectStreamField("segmentShift", Integer.TYPE)};
    static final AtomicInteger counterHashCodeGenerator = new AtomicInteger();

    static {
        try {
            U = getUnsafe();
            SIZECTL = U.objectFieldOffset(ConcurrentHashMapV8.class.getDeclaredField("sizeCtl"));
            TRANSFERINDEX = U.objectFieldOffset(ConcurrentHashMapV8.class.getDeclaredField("transferIndex"));
            TRANSFERORIGIN = U.objectFieldOffset(ConcurrentHashMapV8.class.getDeclaredField("transferOrigin"));
            BASECOUNT = U.objectFieldOffset(ConcurrentHashMapV8.class.getDeclaredField("baseCount"));
            CELLSBUSY = U.objectFieldOffset(ConcurrentHashMapV8.class.getDeclaredField("cellsBusy"));
            CELLVALUE = U.objectFieldOffset(CounterCell.class.getDeclaredField("value"));
            ABASE = U.arrayBaseOffset(Node[].class);
            int scale = U.arrayIndexScale(Node[].class);
            if (((scale - 1) & scale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            ASHIFT = 31 - Integer.numberOfLeadingZeros(scale);
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    static final int spread(int h) {
        return ((h >>> 16) ^ h) & HASH_BITS;
    }

    private static final int tableSizeFor(int c) {
        int n = c - 1;
        int n2 = n | (n >>> 1);
        int n3 = n2 | (n2 >>> 2);
        int n4 = n3 | (n3 >>> 4);
        int n5 = n4 | (n4 >>> 8);
        int n6 = n5 | (n5 >>> 16);
        if (n6 < 0) {
            return 1;
        }
        return n6 < MAXIMUM_CAPACITY ? n6 + 1 : MAXIMUM_CAPACITY;
    }

    static Class<?> comparableClassFor(Object x) {
        Type[] as;
        if (x instanceof Comparable) {
            Class<?> c = x.getClass();
            if (c != String.class) {
                Type[] ts = c.getGenericInterfaces();
                if (ts != null) {
                    for (Type t : ts) {
                        if (t instanceof ParameterizedType) {
                            ParameterizedType p = (ParameterizedType) t;
                            if (p.getRawType() == Comparable.class && (as = p.getActualTypeArguments()) != null && as.length == 1 && as[0] == c) {
                                return c;
                            }
                        }
                    }
                }
            } else {
                return c;
            }
        }
        return null;
    }

    static int compareComparables(Class<?> kc, Object k, Object x) {
        if (x == null || x.getClass() != kc) {
            return 0;
        }
        return ((Comparable) k).compareTo(x);
    }

    static final <K, V> Node<K, V> tabAt(Node<K, V>[] tab, int i) {
        return (Node) U.getObjectVolatile(tab, (i << ASHIFT) + ABASE);
    }

    static final <K, V> boolean casTabAt(Node<K, V>[] tab, int i, Node<K, V> c, Node<K, V> v) {
        return U.compareAndSwapObject(tab, (i << ASHIFT) + ABASE, c, v);
    }

    static final <K, V> void setTabAt(Node<K, V>[] tab, int i, Node<K, V> v) {
        U.putObjectVolatile(tab, (i << ASHIFT) + ABASE, v);
    }

    public ConcurrentHashMapV8() {
    }

    public ConcurrentHashMapV8(int initialCapacity) {
        if (initialCapacity < 0) {
            throw new IllegalArgumentException();
        }
        int cap = initialCapacity >= 536870912 ? MAXIMUM_CAPACITY : tableSizeFor((initialCapacity >>> 1) + initialCapacity + 1);
        this.sizeCtl = cap;
    }

    public ConcurrentHashMapV8(Map<? extends K, ? extends V> m) {
        this.sizeCtl = 16;
        putAll(m);
    }

    public ConcurrentHashMapV8(int initialCapacity, float loadFactor) {
        this(initialCapacity, loadFactor, 1);
    }

    public ConcurrentHashMapV8(int initialCapacity, float loadFactor, int concurrencyLevel) {
        if (loadFactor <= 0.0f || initialCapacity < 0 || concurrencyLevel <= 0) {
            throw new IllegalArgumentException();
        }
        long size = (long) (1.0d + ((initialCapacity < concurrencyLevel ? concurrencyLevel : initialCapacity) / loadFactor));
        int cap = size >= 1073741824 ? MAXIMUM_CAPACITY : tableSizeFor((int) size);
        this.sizeCtl = cap;
    }

    @Override // java.util.Map
    public int size() {
        long n = sumCount();
        if (n < 0) {
            return 0;
        }
        return n > 2147483647L ? HASH_BITS : (int) n;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return sumCount() <= 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        return (V) r0.val;
     */
    @Override // java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r10) {
        /*
            r9 = this;
            r7 = 0
            int r8 = r10.hashCode()
            int r3 = spread(r8)
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node<K, V>[] r6 = r9.table
            if (r6 == 0) goto L2b
            int r4 = r6.length
            if (r4 <= 0) goto L2b
            int r8 = r4 + (-1)
            r8 = r8 & r3
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node r0 = tabAt(r6, r8)
            if (r0 == 0) goto L2b
            int r1 = r0.hash
            if (r1 != r3) goto L2c
            java.lang.Object r2 = r0.key
            if (r2 == r10) goto L29
            if (r2 == 0) goto L37
            boolean r8 = r10.equals(r2)
            if (r8 == 0) goto L37
        L29:
            java.lang.Object r7 = r0.val
        L2b:
            return r7
        L2c:
            if (r1 >= 0) goto L37
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node r5 = r0.find(r3, r10)
            if (r5 == 0) goto L2b
            java.lang.Object r7 = r5.val
            goto L2b
        L37:
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node r0 = r0.next
            if (r0 == 0) goto L2b
            int r8 = r0.hash
            if (r8 != r3) goto L37
            java.lang.Object r2 = r0.key
            if (r2 == r10) goto L4b
            if (r2 == 0) goto L37
            boolean r8 = r10.equals(r2)
            if (r8 == 0) goto L37
        L4b:
            java.lang.Object r7 = r0.val
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ConcurrentHashMapV8.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return get(key) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        if (value == null) {
            throw new NullPointerException();
        }
        Node<K, V>[] t = this.table;
        if (t == null) {
            return false;
        }
        Traverser<K, V> it = new Traverser<>(t, t.length, 0, t.length);
        while (true) {
            Node<K, V> p = it.advance();
            if (p == null) {
                return false;
            }
            Object obj = p.val;
            if (obj == value || (obj != null && value.equals(obj))) {
                break;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public V put(K key, V value) {
        return putVal(key, value, false);
    }

    final V putVal(K k, V v, boolean z) {
        V v2;
        Object obj;
        if (k == null || v == null) {
            throw new NullPointerException();
        }
        int spread = spread(k.hashCode());
        int i = 0;
        Node<K, V>[] nodeArr = this.table;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i2 = (length - 1) & spread;
                    Node tabAt = tabAt(nodeArr, i2);
                    if (tabAt == null) {
                        if (casTabAt(nodeArr, i2, null, new Node(spread, k, v, (Node) null))) {
                            break;
                        }
                    } else {
                        int i3 = tabAt.hash;
                        if (i3 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            Object obj2 = null;
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i2) == tabAt) {
                                    if (i3 >= 0) {
                                        i = 1;
                                        Node node = tabAt;
                                        while (true) {
                                            if (node.hash != spread || ((obj = node.key) != k && (obj == null || !k.equals(obj)))) {
                                                Node node2 = node;
                                                node = node.next;
                                                if (node != null) {
                                                    i++;
                                                } else {
                                                    node2.next = new Node(spread, k, v, (Node) null);
                                                    break;
                                                }
                                            }
                                        }
                                        obj2 = node.val;
                                        if (!z) {
                                            node.val = v;
                                        }
                                        v2 = (V) obj2;
                                    } else if (tabAt instanceof TreeBin) {
                                        i = 2;
                                        TreeNode putTreeVal = ((TreeBin) tabAt).putTreeVal(spread, k, v);
                                        if (putTreeVal != null) {
                                            Object obj3 = ((Node) putTreeVal).val;
                                            if (!z) {
                                                ((Node) putTreeVal).val = v;
                                            }
                                            v2 = (V) obj3;
                                        }
                                    }
                                }
                                v2 = null;
                            }
                            if (i != 0) {
                                if (i >= 8) {
                                    treeifyBin(nodeArr, i2);
                                }
                                if (v2 != null) {
                                    return v2;
                                }
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
        addCount(1L, i);
        return null;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> m) {
        tryPresize(m.size());
        for (Map.Entry<? extends K, ? extends V> e : m.entrySet()) {
            putVal(e.getKey(), e.getValue(), false);
        }
    }

    @Override // java.util.Map
    public V remove(Object key) {
        return replaceNode(key, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0021, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final V replaceNode(java.lang.Object r25, V r26, java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ConcurrentHashMapV8.replaceNode(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:? -> B:25:0x0048). Please report as a decompilation issue!!! */
    @Override // java.util.Map
    public void clear() {
        int i;
        Node<K, V> p;
        long delta = 0;
        Node<K, V>[] tab = this.table;
        for (int i2 = 0; tab != null && i2 < tab.length; i2 = i) {
            Node<K, V> f = tabAt(tab, i2);
            if (f == null) {
                i = i2 + 1;
            } else {
                int fh = f.hash;
                if (fh == -1) {
                    tab = helpTransfer(tab, f);
                    i = 0;
                } else {
                    synchronized (f) {
                        try {
                            if (tabAt(tab, i2) == f) {
                                if (fh >= 0) {
                                    p = f;
                                } else {
                                    p = f instanceof TreeBin ? ((TreeBin) f).first : null;
                                }
                                while (p != null) {
                                    delta--;
                                    p = p.next;
                                }
                                i = i2 + 1;
                                try {
                                    setTabAt(tab, i2, null);
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            } else {
                                i = i2;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                }
            }
        }
        if (delta != 0) {
            addCount(delta, -1);
        }
    }

    @Override // java.util.Map
    public KeySetView<K, V> keySet() {
        KeySetView<K, V> ks = this.keySet;
        if (ks != null) {
            return ks;
        }
        KeySetView<K, V> ks2 = new KeySetView<>(this, (Object) null);
        this.keySet = ks2;
        return ks2;
    }

    @Override // java.util.Map
    public Collection<V> values() {
        ValuesView<K, V> vs = this.values;
        if (vs != null) {
            return vs;
        }
        ValuesView<K, V> vs2 = new ValuesView<>(this);
        this.values = vs2;
        return vs2;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        EntrySetView<K, V> es = this.entrySet;
        if (es != null) {
            return es;
        }
        EntrySetView<K, V> es2 = new EntrySetView<>(this);
        this.entrySet = es2;
        return es2;
    }

    @Override // java.util.Map
    public int hashCode() {
        int h = 0;
        Node<K, V>[] t = this.table;
        if (t != null) {
            Traverser<K, V> it = new Traverser<>(t, t.length, 0, t.length);
            while (true) {
                Node<K, V> p = it.advance();
                if (p == null) {
                    break;
                }
                h += p.key.hashCode() ^ p.val.hashCode();
            }
        }
        return h;
    }

    public String toString() {
        Node<K, V>[] t = this.table;
        int f = t == null ? 0 : t.length;
        Traverser<K, V> it = new Traverser<>(t, f, 0, f);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        Node<K, V> p = it.advance();
        if (p != null) {
            while (true) {
                Object obj = p.key;
                Object obj2 = p.val;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                p = it.advance();
                if (p == null) {
                    break;
                }
                sb.append(',').append(' ');
            }
        }
        return sb.append('}').toString();
    }

    @Override // java.util.Map
    public boolean equals(Object o) {
        Object mv;
        Object v;
        if (o != this) {
            if (!(o instanceof Map)) {
                return false;
            }
            Map<?, ?> m = (Map) o;
            Node<K, V>[] t = this.table;
            int f = t == null ? 0 : t.length;
            Traverser<K, V> it = new Traverser<>(t, f, 0, f);
            while (true) {
                Node<K, V> p = it.advance();
                if (p != null) {
                    Object obj = p.val;
                    Object v2 = m.get(p.key);
                    if (v2 == null) {
                        return false;
                    }
                    if (v2 != obj && !v2.equals(obj)) {
                        return false;
                    }
                } else {
                    for (Map.Entry<K, V> entry : m.entrySet()) {
                        Object mk = entry.getKey();
                        if (mk == null || (mv = entry.getValue()) == null || (v = get(mk)) == null) {
                            return false;
                        }
                        if (mv != v && !mv.equals(v)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    private void writeObject(ObjectOutputStream s) throws IOException {
        int sshift = 0;
        int ssize = 1;
        while (ssize < 16) {
            sshift++;
            ssize <<= 1;
        }
        int segmentShift = 32 - sshift;
        int segmentMask = ssize - 1;
        Segment<K, V>[] segments = new Segment[16];
        for (int i = 0; i < segments.length; i++) {
            segments[i] = new Segment<>(LOAD_FACTOR);
        }
        s.putFields().put("segments", segments);
        s.putFields().put("segmentShift", segmentShift);
        s.putFields().put("segmentMask", segmentMask);
        s.writeFields();
        Node<K, V>[] t = this.table;
        if (t != null) {
            Traverser<K, V> it = new Traverser<>(t, t.length, 0, t.length);
            while (true) {
                Node<K, V> p = it.advance();
                if (p == null) {
                    break;
                }
                s.writeObject(p.key);
                s.writeObject(p.val);
            }
        }
        s.writeObject(null);
        s.writeObject(null);
    }

    private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        int n;
        boolean insertAtFront;
        this.sizeCtl = -1;
        s.defaultReadObject();
        long size = 0;
        Node<K, V> p = null;
        while (true) {
            Object readObject = s.readObject();
            Object readObject2 = s.readObject();
            if (readObject == null || readObject2 == null) {
                break;
            }
            size++;
            p = new Node<>(spread(readObject.hashCode()), readObject, readObject2, p);
        }
        if (size == 0) {
            this.sizeCtl = 0;
            return;
        }
        if (size >= 536870912) {
            n = MAXIMUM_CAPACITY;
        } else {
            int sz = (int) size;
            n = tableSizeFor((sz >>> 1) + sz + 1);
        }
        Node<K, V>[] tab = new Node[n];
        int mask = n - 1;
        long added = 0;
        while (p != null) {
            Node<K, V> next = p.next;
            int h = p.hash;
            int j = h & mask;
            TreeBin<K, V> t = tabAt(tab, j);
            if (t == null) {
                insertAtFront = true;
            } else {
                Object obj = p.key;
                if (((Node) t).hash < 0) {
                    if (t.putTreeVal(h, obj, p.val) == null) {
                        added++;
                    }
                    insertAtFront = false;
                } else {
                    int binCount = 0;
                    insertAtFront = true;
                    for (TreeBin<K, V> treeBin = t; treeBin != null; treeBin = ((Node) treeBin).next) {
                        if (((Node) treeBin).hash == h) {
                            Object obj2 = ((Node) treeBin).key;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                insertAtFront = false;
                                break;
                            }
                        }
                        binCount++;
                    }
                    if (insertAtFront && binCount >= 8) {
                        insertAtFront = false;
                        added++;
                        p.next = t;
                        TreeNode<K, V> hd = null;
                        TreeNode<K, V> tl = null;
                        for (Node<K, V> q = p; q != null; q = q.next) {
                            TreeNode<K, V> t2 = new TreeNode<>(q.hash, q.key, q.val, (Node) null, (TreeNode) null);
                            t2.prev = tl;
                            if (tl == null) {
                                hd = t2;
                            } else {
                                tl.next = t2;
                            }
                            tl = t2;
                        }
                        setTabAt(tab, j, new TreeBin(hd));
                    }
                }
            }
            if (insertAtFront) {
                added++;
                p.next = t;
                setTabAt(tab, j, p);
            }
            p = next;
        }
        this.table = tab;
        this.sizeCtl = n - (n >>> 2);
        this.baseCount = added;
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V putIfAbsent(K key, V value) {
        return putVal(key, value, true);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public boolean remove(Object key, Object value) {
        if (key == null) {
            throw new NullPointerException();
        }
        return (value == null || replaceNode(key, null, value) == null) ? false : true;
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public boolean replace(K key, V oldValue, V newValue) {
        if (key == null || oldValue == null || newValue == null) {
            throw new NullPointerException();
        }
        return replaceNode(key, newValue, oldValue) != null;
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V replace(K key, V value) {
        if (key == null || value == null) {
            throw new NullPointerException();
        }
        return replaceNode(key, value, null);
    }

    @Override // java.util.concurrent.ConcurrentMap, java.util.Map
    public V getOrDefault(Object key, V defaultValue) {
        V v = get(key);
        return v == null ? defaultValue : v;
    }

    public void forEach(BiAction<? super K, ? super V> action) {
        if (action == null) {
            throw new NullPointerException();
        }
        Node<K, V>[] t = this.table;
        if (t != null) {
            Traverser<K, V> it = new Traverser<>(t, t.length, 0, t.length);
            while (true) {
                Node<K, V> p = it.advance();
                if (p != null) {
                    action.apply(p.key, p.val);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(BiFun<? super K, ? super V, ? extends V> function) {
        if (function == null) {
            throw new NullPointerException();
        }
        Node<K, V>[] t = this.table;
        if (t != null) {
            Traverser<K, V> it = new Traverser<>(t, t.length, 0, t.length);
            while (true) {
                Node<K, V> p = it.advance();
                if (p != null) {
                    Object obj = p.val;
                    Object obj2 = p.key;
                    do {
                        Object apply = function.apply(obj2, obj);
                        if (apply == null) {
                            throw new NullPointerException();
                        }
                        if (replaceNode(obj2, apply, obj) == null) {
                            obj = get(obj2);
                        }
                    } while (obj != null);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d1, code lost:
    
        if (r4 == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V computeIfAbsent(K r27, io.netty.util.internal.chmv8.ConcurrentHashMapV8.Fun<? super K, ? extends V> r28) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ConcurrentHashMapV8.computeIfAbsent(java.lang.Object, io.netty.util.internal.chmv8.ConcurrentHashMapV8$Fun):java.lang.Object");
    }

    public V computeIfPresent(K k, BiFun<? super K, ? super V, ? extends V> biFun) {
        TreeNode findTreeNode;
        Object obj;
        if (k == null || biFun == null) {
            throw new NullPointerException();
        }
        int spread = spread(k.hashCode());
        V v = null;
        int i = 0;
        int i2 = 0;
        Node<K, V>[] nodeArr = this.table;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & spread;
                    Node<K, V> tabAt = tabAt(nodeArr, i3);
                    if (tabAt == null) {
                        break;
                    }
                    int i4 = tabAt.hash;
                    if (i4 == -1) {
                        nodeArr = helpTransfer(nodeArr, tabAt);
                    } else {
                        synchronized (tabAt) {
                            if (tabAt(nodeArr, i3) == tabAt) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    Node<K, V> node = tabAt;
                                    Node<K, V> node2 = null;
                                    while (true) {
                                        if (node.hash != spread || ((obj = node.key) != k && (obj == null || !k.equals(obj)))) {
                                            node2 = node;
                                            node = node.next;
                                            if (node == null) {
                                                break;
                                            }
                                            i2++;
                                        }
                                    }
                                    v = (V) biFun.apply(k, node.val);
                                    if (v != null) {
                                        node.val = v;
                                    } else {
                                        i = -1;
                                        Node node3 = node.next;
                                        if (node2 != null) {
                                            node2.next = node3;
                                        } else {
                                            setTabAt(nodeArr, i3, node3);
                                        }
                                    }
                                } else if (tabAt instanceof TreeBin) {
                                    i2 = 2;
                                    TreeBin treeBin = (TreeBin) tabAt;
                                    TreeNode treeNode = treeBin.root;
                                    if (treeNode != null && (findTreeNode = treeNode.findTreeNode(spread, k, (Class) null)) != null) {
                                        v = (V) biFun.apply(k, findTreeNode.val);
                                        if (v != null) {
                                            findTreeNode.val = v;
                                        } else {
                                            i = -1;
                                            if (treeBin.removeTreeNode(findTreeNode)) {
                                                setTabAt(nodeArr, i3, untreeify(treeBin.first));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
        if (i != 0) {
            addCount(i, i2);
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V compute(K k, BiFun<? super K, ? super V, ? extends V> biFun) {
        Node node;
        TreeNode<K, V> treeNode;
        V v;
        Object obj;
        if (k == null || biFun == null) {
            throw new NullPointerException();
        }
        int spread = spread(k.hashCode());
        int i = 0;
        int i2 = 0;
        Node<K, V>[] nodeArr = this.table;
        V v2 = null;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & spread;
                    Node<K, V> tabAt = tabAt(nodeArr, i3);
                    if (tabAt == null) {
                        ReservationNode reservationNode = new ReservationNode();
                        synchronized (reservationNode) {
                            if (casTabAt(nodeArr, i3, null, reservationNode)) {
                                i2 = 1;
                                try {
                                    Object apply = biFun.apply(k, (Object) null);
                                    if (apply == 0) {
                                        node = null;
                                    } else {
                                        i = 1;
                                        node = new Node(spread, k, apply, (Node) null);
                                    }
                                    setTabAt(nodeArr, i3, node);
                                    v2 = apply;
                                } finally {
                                }
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = tabAt.hash;
                        if (i4 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i3) == tabAt) {
                                    if (i4 >= 0) {
                                        i2 = 1;
                                        Node<K, V> node2 = tabAt;
                                        Node<K, V> node3 = null;
                                        while (true) {
                                            if (node2.hash != spread || ((obj = node2.key) != k && (obj == null || !k.equals(obj)))) {
                                                node3 = node2;
                                                node2 = node2.next;
                                                if (node2 != null) {
                                                    i2++;
                                                } else {
                                                    Object apply2 = biFun.apply(k, (Object) null);
                                                    v = apply2;
                                                    if (apply2 != 0) {
                                                        i = 1;
                                                        node3.next = new Node(spread, k, apply2, (Node) null);
                                                        v = apply2;
                                                    }
                                                }
                                            }
                                        }
                                        Object apply3 = biFun.apply(k, node2.val);
                                        if (apply3 != 0) {
                                            node2.val = apply3;
                                            v = apply3;
                                        } else {
                                            i = -1;
                                            Node node4 = node2.next;
                                            if (node3 != null) {
                                                node3.next = node4;
                                                v = apply3;
                                            } else {
                                                setTabAt(nodeArr, i3, node4);
                                                v = apply3;
                                            }
                                        }
                                        v2 = v;
                                    } else if (tabAt instanceof TreeBin) {
                                        i2 = 1;
                                        TreeBin treeBin = (TreeBin) tabAt;
                                        TreeNode treeNode2 = treeBin.root;
                                        if (treeNode2 != null) {
                                            treeNode = treeNode2.findTreeNode(spread, k, (Class) null);
                                        } else {
                                            treeNode = null;
                                        }
                                        Object apply4 = biFun.apply(k, treeNode == null ? null : treeNode.val);
                                        if (apply4 != 0) {
                                            if (treeNode != null) {
                                                treeNode.val = apply4;
                                                v2 = apply4;
                                            } else {
                                                i = 1;
                                                treeBin.putTreeVal(spread, k, apply4);
                                                v2 = apply4;
                                            }
                                        } else {
                                            if (treeNode != null) {
                                                i = -1;
                                                if (treeBin.removeTreeNode(treeNode)) {
                                                    setTabAt(nodeArr, i3, untreeify(treeBin.first));
                                                }
                                            }
                                            v2 = apply4;
                                        }
                                    }
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    treeifyBin(nodeArr, i3);
                                }
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
        if (i != 0) {
            addCount(i, i2);
        }
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V merge(K k, V v, BiFun<? super V, ? super V, ? extends V> biFun) {
        V v2;
        Object obj;
        if (k == null || v == null || biFun == null) {
            throw new NullPointerException();
        }
        int spread = spread(k.hashCode());
        int i = 0;
        int i2 = 0;
        Node<K, V>[] nodeArr = this.table;
        V v3 = null;
        while (true) {
            if (nodeArr != null) {
                int length = nodeArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & spread;
                    Node<K, V> tabAt = tabAt(nodeArr, i3);
                    if (tabAt == null) {
                        if (casTabAt(nodeArr, i3, null, new Node(spread, k, v, (Node) null))) {
                            i = 1;
                            v3 = v;
                            break;
                        }
                    } else {
                        int i4 = tabAt.hash;
                        if (i4 == -1) {
                            nodeArr = helpTransfer(nodeArr, tabAt);
                        } else {
                            synchronized (tabAt) {
                                if (tabAt(nodeArr, i3) == tabAt) {
                                    if (i4 >= 0) {
                                        i2 = 1;
                                        Node<K, V> node = tabAt;
                                        Node<K, V> node2 = null;
                                        while (true) {
                                            if (node.hash != spread || ((obj = node.key) != k && (obj == null || !k.equals(obj)))) {
                                                node2 = node;
                                                node = node.next;
                                                if (node != null) {
                                                    i2++;
                                                } else {
                                                    i = 1;
                                                    V v4 = v;
                                                    node2.next = new Node(spread, k, v4, (Node) null);
                                                    v2 = v4;
                                                    break;
                                                }
                                            }
                                        }
                                        Object apply = biFun.apply(node.val, v);
                                        if (apply != 0) {
                                            node.val = apply;
                                            v2 = apply;
                                        } else {
                                            i = -1;
                                            Node node3 = node.next;
                                            if (node2 != null) {
                                                node2.next = node3;
                                                v2 = apply;
                                            } else {
                                                setTabAt(nodeArr, i3, node3);
                                                v2 = apply;
                                            }
                                        }
                                        v3 = v2;
                                    } else if (tabAt instanceof TreeBin) {
                                        i2 = 2;
                                        TreeBin treeBin = (TreeBin) tabAt;
                                        TreeNode treeNode = treeBin.root;
                                        TreeNode<K, V> findTreeNode = treeNode == null ? null : treeNode.findTreeNode(spread, k, (Class) null);
                                        V apply2 = findTreeNode == null ? v : biFun.apply(findTreeNode.val, v);
                                        if (apply2 != null) {
                                            if (findTreeNode != null) {
                                                findTreeNode.val = apply2;
                                                v3 = apply2;
                                            } else {
                                                i = 1;
                                                treeBin.putTreeVal(spread, k, apply2);
                                                v3 = apply2;
                                            }
                                        } else {
                                            if (findTreeNode != null) {
                                                i = -1;
                                                if (treeBin.removeTreeNode(findTreeNode)) {
                                                    setTabAt(nodeArr, i3, untreeify(treeBin.first));
                                                }
                                            }
                                            v3 = apply2;
                                        }
                                    }
                                }
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    treeifyBin(nodeArr, i3);
                                }
                            }
                        }
                    }
                }
            }
            nodeArr = initTable();
        }
        if (i != 0) {
            addCount(i, i2);
        }
        return v3;
    }

    @Deprecated
    public boolean contains(Object value) {
        return containsValue(value);
    }

    public Enumeration<K> keys() {
        Node<K, V>[] t = this.table;
        int f = t == null ? 0 : t.length;
        return new KeyIterator(t, f, 0, f, this);
    }

    public Enumeration<V> elements() {
        Node<K, V>[] t = this.table;
        int f = t == null ? 0 : t.length;
        return new ValueIterator(t, f, 0, f, this);
    }

    public long mappingCount() {
        long n = sumCount();
        if (n < 0) {
            return 0L;
        }
        return n;
    }

    public static <K> KeySetView<K, Boolean> newKeySet() {
        return new KeySetView<>(new ConcurrentHashMapV8(), Boolean.TRUE);
    }

    public static <K> KeySetView<K, Boolean> newKeySet(int initialCapacity) {
        return new KeySetView<>(new ConcurrentHashMapV8(initialCapacity), Boolean.TRUE);
    }

    public KeySetView<K, V> keySet(V mappedValue) {
        if (mappedValue == null) {
            throw new NullPointerException();
        }
        return new KeySetView<>(this, mappedValue);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final io.netty.util.internal.chmv8.ConcurrentHashMapV8.Node<K, V>[] initTable() {
        /*
            r9 = this;
        L0:
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node<K, V>[] r8 = r9.table
            if (r8 == 0) goto L7
            int r0 = r8.length
            if (r0 != 0) goto L32
        L7:
            int r4 = r9.sizeCtl
            if (r4 >= 0) goto Lf
            java.lang.Thread.yield()
            goto L0
        Lf:
            sun.misc.Unsafe r0 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.U
            long r2 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.SIZECTL
            r5 = -1
            r1 = r9
            boolean r0 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r0 == 0) goto L0
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node<K, V>[] r8 = r9.table     // Catch: java.lang.Throwable -> L36
            if (r8 == 0) goto L22
            int r0 = r8.length     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L30
        L22:
            if (r4 <= 0) goto L33
            r6 = r4
        L25:
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node[] r7 = new io.netty.util.internal.chmv8.ConcurrentHashMapV8.Node[r6]     // Catch: java.lang.Throwable -> L36
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node[] r7 = (io.netty.util.internal.chmv8.ConcurrentHashMapV8.Node[]) r7     // Catch: java.lang.Throwable -> L36
            r8 = r7
            r9.table = r7     // Catch: java.lang.Throwable -> L36
            int r0 = r6 >>> 2
            int r4 = r6 - r0
        L30:
            r9.sizeCtl = r4
        L32:
            return r8
        L33:
            r6 = 16
            goto L25
        L36:
            r0 = move-exception
            r9.sizeCtl = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ConcurrentHashMapV8.initTable():io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0018, code lost:
    
        if (r4.compareAndSwapLong(r35, r6, r8, r10) == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void addCount(long r36, int r38) {
        /*
            r35 = this;
            r0 = r35
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$CounterCell[] r0 = r0.counterCells
            r30 = r0
            if (r30 != 0) goto L1a
            sun.misc.Unsafe r4 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.U
            long r6 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.BASECOUNT
            r0 = r35
            long r8 = r0.baseCount
            long r10 = r8 + r36
            r5 = r35
            boolean r4 = r4.compareAndSwapLong(r5, r6, r8, r10)
            if (r4 != 0) goto L5c
        L1a:
            r23 = 1
            io.netty.util.internal.InternalThreadLocalMap r34 = io.netty.util.internal.InternalThreadLocalMap.get()
            io.netty.util.internal.IntegerHolder r22 = r34.counterHashCode()
            if (r22 == 0) goto L49
            if (r30 == 0) goto L49
            r0 = r30
            int r4 = r0.length
            int r31 = r4 + (-1)
            if (r31 < 0) goto L49
            r0 = r22
            int r4 = r0.value
            r4 = r4 & r31
            r13 = r30[r4]
            if (r13 == 0) goto L49
            sun.misc.Unsafe r12 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.U
            long r14 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.CELLVALUE
            long r0 = r13.value
            r16 = r0
            long r18 = r16 + r36
            boolean r23 = r12.compareAndSwapLong(r13, r14, r16, r18)
            if (r23 != 0) goto L53
        L49:
            r18 = r35
            r19 = r34
            r20 = r36
            r18.fullAddCount(r19, r20, r22, r23)
        L52:
            return
        L53:
            r4 = 1
            r0 = r38
            if (r0 <= r4) goto L52
            long r10 = r35.sumCount()
        L5c:
            if (r38 < 0) goto L52
        L5e:
            r0 = r35
            int r0 = r0.sizeCtl
            r28 = r0
            r0 = r28
            long r4 = (long) r0
            int r4 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r4 < 0) goto L52
            r0 = r35
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node<K, V>[] r0 = r0.table
            r33 = r0
            if (r33 == 0) goto L52
            r0 = r33
            int r4 = r0.length
            r5 = 1073741824(0x40000000, float:2.0)
            if (r4 >= r5) goto L52
            if (r28 >= 0) goto Laf
            r4 = -1
            r0 = r28
            if (r0 == r4) goto L52
            r0 = r35
            int r4 = r0.transferIndex
            r0 = r35
            int r5 = r0.transferOrigin
            if (r4 <= r5) goto L52
            r0 = r35
            io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node<K, V>[] r0 = r0.nextTable
            r32 = r0
            if (r32 == 0) goto L52
            sun.misc.Unsafe r24 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.U
            long r26 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.SIZECTL
            int r29 = r28 + (-1)
            r25 = r35
            boolean r4 = r24.compareAndSwapInt(r25, r26, r28, r29)
            if (r4 == 0) goto Laa
            r0 = r35
            r1 = r33
            r2 = r32
            r0.transfer(r1, r2)
        Laa:
            long r10 = r35.sumCount()
            goto L5e
        Laf:
            sun.misc.Unsafe r24 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.U
            long r26 = io.netty.util.internal.chmv8.ConcurrentHashMapV8.SIZECTL
            r29 = -2
            r25 = r35
            boolean r4 = r24.compareAndSwapInt(r25, r26, r28, r29)
            if (r4 == 0) goto Laa
            r4 = 0
            r0 = r35
            r1 = r33
            r0.transfer(r1, r4)
            goto Laa
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ConcurrentHashMapV8.addCount(long, int):void");
    }

    final Node<K, V>[] helpTransfer(Node<K, V>[] tab, Node<K, V> f) {
        Node<K, V>[] nextTab;
        int sc;
        if (!(f instanceof ForwardingNode) || (nextTab = ((ForwardingNode) f).nextTable) == null) {
            return this.table;
        }
        if (nextTab == this.nextTable && tab == this.table && this.transferIndex > this.transferOrigin && (sc = this.sizeCtl) < -1 && U.compareAndSwapInt(this, SIZECTL, sc, sc - 1)) {
            transfer(tab, nextTab);
            return nextTab;
        }
        return nextTab;
    }

    private final void tryPresize(int size) {
        int n;
        int c = size >= 536870912 ? MAXIMUM_CAPACITY : tableSizeFor((size >>> 1) + size + 1);
        while (true) {
            int sc = this.sizeCtl;
            if (sc >= 0) {
                Node<K, V>[] tab = this.table;
                if (tab == null || (n = tab.length) == 0) {
                    int n2 = sc > c ? sc : c;
                    if (U.compareAndSwapInt(this, SIZECTL, sc, -1)) {
                        try {
                            if (this.table == tab) {
                                Node<K, V>[] nt = new Node[n2];
                                this.table = nt;
                                sc = n2 - (n2 >>> 2);
                            }
                        } finally {
                            this.sizeCtl = sc;
                        }
                    } else {
                        continue;
                    }
                } else if (c > sc && n < MAXIMUM_CAPACITY) {
                    if (tab == this.table && U.compareAndSwapInt(this, SIZECTL, sc, -2)) {
                        transfer(tab, null);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e1, code lost:
    
        r59.nextTable = null;
        r59.table = r61;
        r59.sizeCtl = (r0 << 1) - (r0 >>> 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void transfer(io.netty.util.internal.chmv8.ConcurrentHashMapV8.Node<K, V>[] r60, io.netty.util.internal.chmv8.ConcurrentHashMapV8.Node<K, V>[] r61) {
        /*
            Method dump skipped, instructions count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ConcurrentHashMapV8.transfer(io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node[], io.netty.util.internal.chmv8.ConcurrentHashMapV8$Node[]):void");
    }

    private final void treeifyBin(Node<K, V>[] tab, int index) {
        int sc;
        if (tab != null) {
            int n = tab.length;
            if (n < 64) {
                if (tab == this.table && (sc = this.sizeCtl) >= 0 && U.compareAndSwapInt(this, SIZECTL, sc, -2)) {
                    transfer(tab, null);
                    return;
                }
                return;
            }
            Node<K, V> b = tabAt(tab, index);
            if (b != null && b.hash >= 0) {
                synchronized (b) {
                    if (tabAt(tab, index) == b) {
                        TreeNode<K, V> hd = null;
                        TreeNode<K, V> tl = null;
                        for (Node<K, V> e = b; e != null; e = e.next) {
                            TreeNode<K, V> p = new TreeNode<>(e.hash, e.key, e.val, (Node) null, (TreeNode) null);
                            p.prev = tl;
                            if (tl == null) {
                                hd = p;
                            } else {
                                tl.next = p;
                            }
                            tl = p;
                        }
                        setTabAt(tab, index, new TreeBin(hd));
                    }
                }
            }
        }
    }

    static <K, V> Node<K, V> untreeify(Node<K, V> b) {
        Node<K, V> hd = null;
        Node<K, V> tl = null;
        for (Node<K, V> q = b; q != null; q = q.next) {
            Node<K, V> p = new Node<>(q.hash, q.key, q.val, (Node) null);
            if (tl == null) {
                hd = p;
            } else {
                tl.next = p;
            }
            tl = p;
        }
        return hd;
    }

    final int batchFor(long b) {
        if (b != Long.MAX_VALUE) {
            long n = sumCount();
            if (n > 1 && n >= b) {
                int sp = ForkJoinPool.getCommonPoolParallelism() << 2;
                if (b <= 0) {
                    return sp;
                }
                long n2 = n / b;
                return n2 < ((long) sp) ? (int) n2 : sp;
            }
        }
        return 0;
    }

    public void forEach(long parallelismThreshold, BiAction<? super K, ? super V> action) {
        if (action == null) {
            throw new NullPointerException();
        }
        new ForEachMappingTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, action).invoke();
    }

    public <U> void forEach(long parallelismThreshold, BiFun<? super K, ? super V, ? extends U> transformer, Action<? super U> action) {
        if (transformer == null || action == null) {
            throw new NullPointerException();
        }
        new ForEachTransformedMappingTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, transformer, action).invoke();
    }

    public <U> U search(long j, BiFun<? super K, ? super V, ? extends U> biFun) {
        if (biFun == null) {
            throw new NullPointerException();
        }
        return (U) new SearchMappingsTask((BulkTask) null, batchFor(j), 0, 0, this.table, biFun, new AtomicReference()).invoke();
    }

    public <U> U reduce(long j, BiFun<? super K, ? super V, ? extends U> biFun, BiFun<? super U, ? super U, ? extends U> biFun2) {
        if (biFun == null || biFun2 == null) {
            throw new NullPointerException();
        }
        return (U) new MapReduceMappingsTask((BulkTask) null, batchFor(j), 0, 0, this.table, (MapReduceMappingsTask) null, biFun, biFun2).invoke();
    }

    public double reduceToDouble(long parallelismThreshold, ObjectByObjectToDouble<? super K, ? super V> transformer, double basis, DoubleByDoubleToDouble reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Double) new MapReduceMappingsToDoubleTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceMappingsToDoubleTask) null, transformer, basis, reducer).invoke()).doubleValue();
    }

    public long reduceToLong(long parallelismThreshold, ObjectByObjectToLong<? super K, ? super V> transformer, long basis, LongByLongToLong reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Long) new MapReduceMappingsToLongTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceMappingsToLongTask) null, transformer, basis, reducer).invoke()).longValue();
    }

    public int reduceToInt(long parallelismThreshold, ObjectByObjectToInt<? super K, ? super V> transformer, int basis, IntByIntToInt reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Integer) new MapReduceMappingsToIntTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceMappingsToIntTask) null, transformer, basis, reducer).invoke()).intValue();
    }

    public void forEachKey(long parallelismThreshold, Action<? super K> action) {
        if (action == null) {
            throw new NullPointerException();
        }
        new ForEachKeyTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, action).invoke();
    }

    public <U> void forEachKey(long parallelismThreshold, Fun<? super K, ? extends U> transformer, Action<? super U> action) {
        if (transformer == null || action == null) {
            throw new NullPointerException();
        }
        new ForEachTransformedKeyTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, transformer, action).invoke();
    }

    public <U> U searchKeys(long j, Fun<? super K, ? extends U> fun) {
        if (fun == null) {
            throw new NullPointerException();
        }
        return (U) new SearchKeysTask((BulkTask) null, batchFor(j), 0, 0, this.table, fun, new AtomicReference()).invoke();
    }

    public K reduceKeys(long j, BiFun<? super K, ? super K, ? extends K> biFun) {
        if (biFun == null) {
            throw new NullPointerException();
        }
        return (K) new ReduceKeysTask((BulkTask) null, batchFor(j), 0, 0, this.table, (ReduceKeysTask) null, biFun).invoke();
    }

    public <U> U reduceKeys(long j, Fun<? super K, ? extends U> fun, BiFun<? super U, ? super U, ? extends U> biFun) {
        if (fun == null || biFun == null) {
            throw new NullPointerException();
        }
        return (U) new MapReduceKeysTask((BulkTask) null, batchFor(j), 0, 0, this.table, (MapReduceKeysTask) null, fun, biFun).invoke();
    }

    public double reduceKeysToDouble(long parallelismThreshold, ObjectToDouble<? super K> transformer, double basis, DoubleByDoubleToDouble reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Double) new MapReduceKeysToDoubleTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceKeysToDoubleTask) null, transformer, basis, reducer).invoke()).doubleValue();
    }

    public long reduceKeysToLong(long parallelismThreshold, ObjectToLong<? super K> transformer, long basis, LongByLongToLong reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Long) new MapReduceKeysToLongTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceKeysToLongTask) null, transformer, basis, reducer).invoke()).longValue();
    }

    public int reduceKeysToInt(long parallelismThreshold, ObjectToInt<? super K> transformer, int basis, IntByIntToInt reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Integer) new MapReduceKeysToIntTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceKeysToIntTask) null, transformer, basis, reducer).invoke()).intValue();
    }

    public void forEachValue(long parallelismThreshold, Action<? super V> action) {
        if (action == null) {
            throw new NullPointerException();
        }
        new ForEachValueTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, action).invoke();
    }

    public <U> void forEachValue(long parallelismThreshold, Fun<? super V, ? extends U> transformer, Action<? super U> action) {
        if (transformer == null || action == null) {
            throw new NullPointerException();
        }
        new ForEachTransformedValueTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, transformer, action).invoke();
    }

    public <U> U searchValues(long j, Fun<? super V, ? extends U> fun) {
        if (fun == null) {
            throw new NullPointerException();
        }
        return (U) new SearchValuesTask((BulkTask) null, batchFor(j), 0, 0, this.table, fun, new AtomicReference()).invoke();
    }

    public V reduceValues(long j, BiFun<? super V, ? super V, ? extends V> biFun) {
        if (biFun == null) {
            throw new NullPointerException();
        }
        return (V) new ReduceValuesTask((BulkTask) null, batchFor(j), 0, 0, this.table, (ReduceValuesTask) null, biFun).invoke();
    }

    public <U> U reduceValues(long j, Fun<? super V, ? extends U> fun, BiFun<? super U, ? super U, ? extends U> biFun) {
        if (fun == null || biFun == null) {
            throw new NullPointerException();
        }
        return (U) new MapReduceValuesTask((BulkTask) null, batchFor(j), 0, 0, this.table, (MapReduceValuesTask) null, fun, biFun).invoke();
    }

    public double reduceValuesToDouble(long parallelismThreshold, ObjectToDouble<? super V> transformer, double basis, DoubleByDoubleToDouble reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Double) new MapReduceValuesToDoubleTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceValuesToDoubleTask) null, transformer, basis, reducer).invoke()).doubleValue();
    }

    public long reduceValuesToLong(long parallelismThreshold, ObjectToLong<? super V> transformer, long basis, LongByLongToLong reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Long) new MapReduceValuesToLongTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceValuesToLongTask) null, transformer, basis, reducer).invoke()).longValue();
    }

    public int reduceValuesToInt(long parallelismThreshold, ObjectToInt<? super V> transformer, int basis, IntByIntToInt reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Integer) new MapReduceValuesToIntTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceValuesToIntTask) null, transformer, basis, reducer).invoke()).intValue();
    }

    public void forEachEntry(long parallelismThreshold, Action<? super Map.Entry<K, V>> action) {
        if (action == null) {
            throw new NullPointerException();
        }
        new ForEachEntryTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, action).invoke();
    }

    public <U> void forEachEntry(long parallelismThreshold, Fun<Map.Entry<K, V>, ? extends U> transformer, Action<? super U> action) {
        if (transformer == null || action == null) {
            throw new NullPointerException();
        }
        new ForEachTransformedEntryTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, transformer, action).invoke();
    }

    public <U> U searchEntries(long j, Fun<Map.Entry<K, V>, ? extends U> fun) {
        if (fun == null) {
            throw new NullPointerException();
        }
        return (U) new SearchEntriesTask((BulkTask) null, batchFor(j), 0, 0, this.table, fun, new AtomicReference()).invoke();
    }

    public Map.Entry<K, V> reduceEntries(long parallelismThreshold, BiFun<Map.Entry<K, V>, Map.Entry<K, V>, ? extends Map.Entry<K, V>> reducer) {
        if (reducer == null) {
            throw new NullPointerException();
        }
        return (Map.Entry) new ReduceEntriesTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (ReduceEntriesTask) null, reducer).invoke();
    }

    public <U> U reduceEntries(long j, Fun<Map.Entry<K, V>, ? extends U> fun, BiFun<? super U, ? super U, ? extends U> biFun) {
        if (fun == null || biFun == null) {
            throw new NullPointerException();
        }
        return (U) new MapReduceEntriesTask((BulkTask) null, batchFor(j), 0, 0, this.table, (MapReduceEntriesTask) null, fun, biFun).invoke();
    }

    public double reduceEntriesToDouble(long parallelismThreshold, ObjectToDouble<Map.Entry<K, V>> transformer, double basis, DoubleByDoubleToDouble reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Double) new MapReduceEntriesToDoubleTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceEntriesToDoubleTask) null, transformer, basis, reducer).invoke()).doubleValue();
    }

    public long reduceEntriesToLong(long parallelismThreshold, ObjectToLong<Map.Entry<K, V>> transformer, long basis, LongByLongToLong reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Long) new MapReduceEntriesToLongTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceEntriesToLongTask) null, transformer, basis, reducer).invoke()).longValue();
    }

    public int reduceEntriesToInt(long parallelismThreshold, ObjectToInt<Map.Entry<K, V>> transformer, int basis, IntByIntToInt reducer) {
        if (transformer == null || reducer == null) {
            throw new NullPointerException();
        }
        return ((Integer) new MapReduceEntriesToIntTask((BulkTask) null, batchFor(parallelismThreshold), 0, 0, this.table, (MapReduceEntriesToIntTask) null, transformer, basis, reducer).invoke()).intValue();
    }

    final long sumCount() {
        CounterCell[] as = this.counterCells;
        long sum = this.baseCount;
        if (as != null) {
            for (CounterCell a : as) {
                if (a != null) {
                    sum += a.value;
                }
            }
        }
        return sum;
    }

    private final void fullAddCount(InternalThreadLocalMap threadLocals, long x, IntegerHolder hc, boolean wasUncontended) {
        int h;
        int n;
        int m;
        if (hc == null) {
            hc = new IntegerHolder();
            int s = counterHashCodeGenerator.addAndGet(SEED_INCREMENT);
            h = s == 0 ? 1 : s;
            hc.value = h;
            threadLocals.setCounterHashCode(hc);
        } else {
            h = hc.value;
        }
        boolean collide = false;
        while (true) {
            CounterCell[] as = this.counterCells;
            if (as != null && (n = as.length) > 0) {
                CounterCell a = as[(n - 1) & h];
                if (a == null) {
                    if (this.cellsBusy == 0) {
                        CounterCell r = new CounterCell(x);
                        if (this.cellsBusy == 0 && U.compareAndSwapInt(this, CELLSBUSY, 0, 1)) {
                            boolean created = false;
                            try {
                                CounterCell[] rs = this.counterCells;
                                if (rs != null && (m = rs.length) > 0) {
                                    int j = (m - 1) & h;
                                    if (rs[j] == null) {
                                        rs[j] = r;
                                        created = true;
                                    }
                                }
                                if (created) {
                                    break;
                                }
                            } finally {
                            }
                        }
                    }
                    collide = false;
                    int h2 = h ^ (h << 13);
                    int h3 = h2 ^ (h2 >>> 17);
                    h = h3 ^ (h3 << 5);
                } else {
                    if (!wasUncontended) {
                        wasUncontended = true;
                    } else {
                        Unsafe unsafe = U;
                        long j2 = CELLVALUE;
                        long v = a.value;
                        if (unsafe.compareAndSwapLong(a, j2, v, v + x)) {
                            break;
                        }
                        if (this.counterCells != as || n >= NCPU) {
                            collide = false;
                        } else if (!collide) {
                            collide = true;
                        } else if (this.cellsBusy == 0 && U.compareAndSwapInt(this, CELLSBUSY, 0, 1)) {
                            try {
                                if (this.counterCells == as) {
                                    CounterCell[] rs2 = new CounterCell[n << 1];
                                    for (int i = 0; i < n; i++) {
                                        rs2[i] = as[i];
                                    }
                                    this.counterCells = rs2;
                                }
                                this.cellsBusy = 0;
                                collide = false;
                            } finally {
                            }
                        }
                    }
                    int h22 = h ^ (h << 13);
                    int h32 = h22 ^ (h22 >>> 17);
                    h = h32 ^ (h32 << 5);
                }
            } else if (this.cellsBusy == 0 && this.counterCells == as && U.compareAndSwapInt(this, CELLSBUSY, 0, 1)) {
                boolean init = false;
                try {
                    if (this.counterCells == as) {
                        CounterCell[] rs3 = new CounterCell[2];
                        rs3[h & 1] = new CounterCell(x);
                        this.counterCells = rs3;
                        init = true;
                    }
                    this.cellsBusy = 0;
                    if (init) {
                        break;
                    }
                } finally {
                }
            } else {
                Unsafe unsafe2 = U;
                long j3 = BASECOUNT;
                long v2 = this.baseCount;
                if (unsafe2.compareAndSwapLong(this, j3, v2, v2 + x)) {
                    break;
                }
            }
        }
        hc.value = h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Unsafe getUnsafe() {
        try {
            return Unsafe.getUnsafe();
        } catch (SecurityException e) {
            try {
                return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new 1());
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }
    }
}
