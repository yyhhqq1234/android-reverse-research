package com.applovin.exoplayer2.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Splitter {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final e strategy;
    private final CharMatcher trimmer;

    class a implements e {
        final /* synthetic */ CharMatcher a;

        /* JADX INFO: renamed from: com.applovin.exoplayer2.common.base.Splitter$a$a, reason: collision with other inner class name */
        class C0008a extends d {
            C0008a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.applovin.exoplayer2.common.base.Splitter.d
            int a(int i) {
                return i + 1;
            }

            @Override // com.applovin.exoplayer2.common.base.Splitter.d
            int b(int i) {
                return a.this.a.indexIn(this.c, i);
            }
        }

        a(CharMatcher charMatcher) {
            this.a = charMatcher;
        }

        @Override // com.applovin.exoplayer2.common.base.Splitter.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public d a(Splitter splitter, CharSequence charSequence) {
            return new C0008a(splitter, charSequence);
        }
    }

    class b implements e {
        final /* synthetic */ String a;

        class a extends d {
            a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.applovin.exoplayer2.common.base.Splitter.d
            public int a(int i) {
                return i + b.this.a.length();
            }

            @Override // com.applovin.exoplayer2.common.base.Splitter.d
            public int b(int i) {
                int length = b.this.a.length();
                int length2 = this.c.length() - length;
                while (i <= length2) {
                    for (int i2 = 0; i2 < length; i2++) {
                        if (this.c.charAt(i2 + i) != b.this.a.charAt(i2)) {
                            i++;
                        }
                    }
                    return i;
                }
                return -1;
            }
        }

        b(String str) {
            this.a = str;
        }

        @Override // com.applovin.exoplayer2.common.base.Splitter.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public d a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    class c implements e {
        final /* synthetic */ int a;

        class a extends d {
            a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.applovin.exoplayer2.common.base.Splitter.d
            public int a(int i) {
                return i;
            }

            @Override // com.applovin.exoplayer2.common.base.Splitter.d
            public int b(int i) {
                int i2 = i + c.this.a;
                if (i2 < this.c.length()) {
                    return i2;
                }
                return -1;
            }
        }

        c(int i) {
            this.a = i;
        }

        @Override // com.applovin.exoplayer2.common.base.Splitter.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public d a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    private static abstract class d extends com.applovin.exoplayer2.common.base.b {
        final CharSequence c;
        final CharMatcher d;
        final boolean f;
        int g = 0;
        int h;

        protected d(Splitter splitter, CharSequence charSequence) {
            this.d = splitter.trimmer;
            this.f = splitter.omitEmptyStrings;
            this.h = splitter.limit;
            this.c = charSequence;
        }

        abstract int a(int i);

        abstract int b(int i);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.applovin.exoplayer2.common.base.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String a() {
            int i = this.g;
            while (true) {
                int i2 = this.g;
                if (i2 == -1) {
                    return (String) b();
                }
                int iB = b(i2);
                if (iB == -1) {
                    iB = this.c.length();
                    this.g = -1;
                } else {
                    this.g = a(iB);
                }
                int i3 = this.g;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.g = i4;
                    if (i4 > this.c.length()) {
                        this.g = -1;
                    }
                } else {
                    while (i < iB && this.d.matches(this.c.charAt(i))) {
                        i++;
                    }
                    while (iB > i && this.d.matches(this.c.charAt(iB - 1))) {
                        iB--;
                    }
                    if (!this.f || i != iB) {
                        int i5 = this.h;
                        if (i5 == 1) {
                            iB = this.c.length();
                            this.g = -1;
                            while (iB > i && this.d.matches(this.c.charAt(iB - 1))) {
                                iB--;
                            }
                        } else {
                            this.h = i5 - 1;
                        }
                        return this.c.subSequence(i, iB).toString();
                    }
                    i = this.g;
                }
            }
        }
    }

    private interface e {
        Iterator a(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(e eVar) {
        this(eVar, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    public static Splitter fixedLength(int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new c(i));
    }

    public static Splitter on(char c2) {
        return on(CharMatcher.is(c2));
    }

    private Iterator<String> splittingIterator(CharSequence charSequence) {
        return this.strategy.a(this, charSequence);
    }

    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.strategy, this.omitEmptyStrings, this.trimmer, i);
    }

    public Splitter omitEmptyStrings() {
        return new Splitter(this.strategy, true, this.trimmer, this.limit);
    }

    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> itSplittingIterator = splittingIterator(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itSplittingIterator.hasNext()) {
            arrayList.add(itSplittingIterator.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Splitter trimResults() {
        return trimResults(CharMatcher.whitespace());
    }

    private Splitter(e eVar, boolean z, CharMatcher charMatcher, int i) {
        this.strategy = eVar;
        this.omitEmptyStrings = z;
        this.trimmer = charMatcher;
        this.limit = i;
    }

    public static Splitter on(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new a(charMatcher));
    }

    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.strategy, this.omitEmptyStrings, charMatcher, this.limit);
    }

    public static Splitter on(String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        if (str.length() == 1) {
            return on(str.charAt(0));
        }
        return new Splitter(new b(str));
    }
}
