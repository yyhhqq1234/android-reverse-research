package com.applovin.impl;

import android.os.Process;
import android.os.SystemClock;
import androidx.core.util.Consumer;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class dg {
    private final PriorityBlockingQueue a = new PriorityBlockingQueue();
    private final com.applovin.impl.sdk.j b;

    public dg(com.applovin.impl.sdk.j jVar) {
        this.b = jVar;
    }

    public void a(c cVar) {
        if (cVar != null) {
            this.a.add(cVar);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends Thread {
        private final BlockingQueue a;
        private final com.applovin.impl.sdk.j b;

        private b(BlockingQueue blockingQueue, int i, com.applovin.impl.sdk.j jVar) {
            super("AppLovinSdk:network");
            if (blockingQueue == null) {
                throw new IllegalArgumentException("No request queue specified");
            }
            if (jVar != null) {
                this.a = blockingQueue;
                this.b = jVar;
                setPriority(((Integer) jVar.a(sj.U)).intValue());
                return;
            }
            throw new IllegalArgumentException("No sdk specified");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(c cVar, d dVar) {
            cVar.g.accept(dVar);
        }

        private HttpURLConnection a(c cVar) throws ProtocolException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(cVar.a).openConnection();
            httpURLConnection.setRequestMethod(cVar.b);
            httpURLConnection.setConnectTimeout(cVar.f);
            httpURLConnection.setReadTimeout(cVar.f);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!cVar.c.isEmpty()) {
                for (Map.Entry entry : cVar.c.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }

        /* JADX WARN: Code duplicated, block: B:128:0x023d A[Catch: all -> 0x02bf, TRY_LEAVE, TryCatch #11 {all -> 0x02bf, blocks: (B:126:0x0225, B:128:0x023d), top: B:170:0x0225 }] */
        /* JADX WARN: Code duplicated, block: B:143:0x0282  */
        /* JADX WARN: Code duplicated, block: B:166:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:179:0x00ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:188:0x0248 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:59:0x00e3 A[Catch: all -> 0x0161, TRY_LEAVE, TryCatch #2 {all -> 0x0161, blocks: (B:57:0x00cb, B:59:0x00e3, B:80:0x0113), top: B:154:0x00cb }] */
        /* JADX WARN: Code duplicated, block: B:82:0x012e  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r4v37 */
        /* JADX WARN: Type inference failed for: r4v38 */
        /* JADX WARN: Type inference failed for: r4v39 */
        /* JADX WARN: Type inference failed for: r4v40 */
        /* JADX WARN: Type inference failed for: r4v41 */
        /* JADX WARN: Type inference failed for: r4v42 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void b(final c cVar) throws Throwable {
            Throwable th;
            ?? r4;
            HttpURLConnection httpURLConnectionA;
            InputStream inputStream;
            long jElapsedRealtime;
            InputStream errorStream;
            InputStream inputStream2;
            byte[] bArrA;
            byte[] bArrA2;
            ?? r5;
            ?? r6;
            InputStream inputStream3;
            InputStream inputStream4;
            Throwable th2;
            byte[] bArrA3;
            HttpURLConnection httpURLConnectionA2;
            long jElapsedRealtime2;
            byte[] bArrA4;
            byte[] bArr;
            byte[] bArr2;
            InputStream errorStream2;
            int responseCode = 0;
            if (((Boolean) this.b.a(sj.z)).booleanValue()) {
                long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                try {
                    httpURLConnectionA2 = a(cVar);
                    try {
                        if (cVar.d != null && cVar.d.length > 0) {
                            httpURLConnectionA2.setDoOutput(true);
                            httpURLConnectionA2.setFixedLengthStreamingMode(cVar.d.length);
                            try {
                                OutputStream outputStream = httpURLConnectionA2.getOutputStream();
                                try {
                                    outputStream.write(cVar.d);
                                    outputStream.close();
                                } catch (Throwable th3) {
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                            throw th3;
                                        } catch (Throwable th4) {
                                            th3.addSuppressed(th4);
                                            throw th3;
                                        }
                                    }
                                    throw th3;
                                }
                            } catch (Throwable th5) {
                                CollectionUtils.putStringIfValid("details", "outputStream", new HashMap());
                                this.b.D().a("NetworkCommunicationThread", "processRequest", th5);
                                throw th5;
                            }
                        }
                        jElapsedRealtime3 = SystemClock.elapsedRealtime();
                        responseCode = httpURLConnectionA2.getResponseCode();
                        jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        if (responseCode > 0) {
                            try {
                                InputStream inputStream5 = httpURLConnectionA2.getInputStream();
                                try {
                                    bArrA3 = e4.a(inputStream5, this.b);
                                    if (inputStream5 != null) {
                                        try {
                                            inputStream5.close();
                                        } catch (Throwable th6) {
                                            th = th6;
                                            try {
                                                HashMap map = new HashMap();
                                                CollectionUtils.putStringIfValid("details", "responseDataInputStream", map);
                                                this.b.D().a("NetworkCommunicationThread", "processRequest", th, map);
                                                throw th;
                                            } catch (Throwable th7) {
                                                th2 = th7;
                                                try {
                                                    jElapsedRealtime2 = SystemClock.elapsedRealtime();
                                                    this.b.I().a("NetworkCommunicationThread", th2);
                                                    this.b.I();
                                                    if (com.applovin.impl.sdk.n.a()) {
                                                        this.b.I().d("NetworkCommunicationThread", "Failed to make HTTP request", th2);
                                                    }
                                                    if (httpURLConnectionA2 != null) {
                                                        try {
                                                            errorStream2 = httpURLConnectionA2.getErrorStream();
                                                            try {
                                                                bArrA4 = e4.a(errorStream2, this.b);
                                                                if (errorStream2 != null) {
                                                                    try {
                                                                        errorStream2.close();
                                                                    } catch (Throwable th8) {
                                                                        th = th8;
                                                                        this.b.I().a("NetworkCommunicationThread", th2);
                                                                        HashMap map2 = new HashMap();
                                                                        CollectionUtils.putStringIfValid("details", "responseErrorDataInputStream", map2);
                                                                        this.b.D().a("NetworkCommunicationThread", "processRequest", th, map2);
                                                                        bArr = bArrA4;
                                                                        bArr2 = bArrA3;
                                                                        yp.a(httpURLConnectionA2, this.b);
                                                                        final d dVarA = d.a().a(responseCode).a(bArr2).b(bArr).a(jElapsedRealtime2 - jElapsedRealtime3).a(th2).a();
                                                                        cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda0
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                dg.b.a(cVar, dVarA);
                                                                            }
                                                                        });
                                                                        return;
                                                                    }
                                                                }
                                                            } catch (Throwable th9) {
                                                                if (errorStream2 != null) {
                                                                    try {
                                                                        errorStream2.close();
                                                                        throw th9;
                                                                    } catch (Throwable th10) {
                                                                        th9.addSuppressed(th10);
                                                                        throw th9;
                                                                    }
                                                                }
                                                                throw th9;
                                                                this.b.I().a("NetworkCommunicationThread", th2);
                                                                HashMap map3 = new HashMap();
                                                                CollectionUtils.putStringIfValid("details", "responseErrorDataInputStream", map3);
                                                                this.b.D().a("NetworkCommunicationThread", "processRequest", th, map3);
                                                                bArr = bArrA4;
                                                                bArr2 = bArrA3;
                                                                yp.a(httpURLConnectionA2, this.b);
                                                                final d dVarA2 = d.a().a(responseCode).a(bArr2).b(bArr).a(jElapsedRealtime2 - jElapsedRealtime3).a(th2).a();
                                                                cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda0
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        dg.b.a(cVar, dVarA2);
                                                                    }
                                                                });
                                                                return;
                                                            }
                                                        } catch (Throwable th11) {
                                                            th = th11;
                                                            bArrA4 = null;
                                                        }
                                                        bArr = bArrA4;
                                                        bArr2 = bArrA3;
                                                    } else {
                                                        bArr2 = bArrA3;
                                                        bArr = null;
                                                    }
                                                    yp.a(httpURLConnectionA2, this.b);
                                                    final d dVarA3 = d.a().a(responseCode).a(bArr2).b(bArr).a(jElapsedRealtime2 - jElapsedRealtime3).a(th2).a();
                                                    cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda0
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            dg.b.a(cVar, dVarA3);
                                                        }
                                                    });
                                                    return;
                                                } catch (Throwable th12) {
                                                    yp.a(httpURLConnectionA2, this.b);
                                                    throw th12;
                                                }
                                            }
                                        }
                                    }
                                    bArr2 = bArrA3;
                                    bArr = null;
                                    th2 = null;
                                } catch (Throwable th13) {
                                    if (inputStream5 != null) {
                                        try {
                                            inputStream5.close();
                                            throw th13;
                                        } catch (Throwable th14) {
                                            th13.addSuppressed(th14);
                                            throw th13;
                                        }
                                    }
                                    throw th13;
                                }
                            } catch (Throwable th15) {
                                th = th15;
                                bArrA3 = null;
                                HashMap map4 = new HashMap();
                                CollectionUtils.putStringIfValid("details", "responseDataInputStream", map4);
                                this.b.D().a("NetworkCommunicationThread", "processRequest", th, map4);
                                throw th;
                            }
                        } else {
                            bArr = null;
                            th2 = null;
                            bArr2 = null;
                        }
                    } catch (Throwable th16) {
                        th2 = th16;
                        bArrA3 = null;
                        jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        this.b.I().a("NetworkCommunicationThread", th2);
                        this.b.I();
                        if (com.applovin.impl.sdk.n.a()) {
                            this.b.I().d("NetworkCommunicationThread", "Failed to make HTTP request", th2);
                        }
                        if (httpURLConnectionA2 != null) {
                            errorStream2 = httpURLConnectionA2.getErrorStream();
                            bArrA4 = e4.a(errorStream2, this.b);
                            if (errorStream2 != null) {
                                errorStream2.close();
                            }
                            bArr = bArrA4;
                            bArr2 = bArrA3;
                        } else {
                            bArr2 = bArrA3;
                            bArr = null;
                        }
                        yp.a(httpURLConnectionA2, this.b);
                        final d dVarA4 = d.a().a(responseCode).a(bArr2).b(bArr).a(jElapsedRealtime2 - jElapsedRealtime3).a(th2).a();
                        cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                dg.b.a(cVar, dVarA4);
                            }
                        });
                        return;
                    }
                } catch (Throwable th17) {
                    th2 = th17;
                    bArrA3 = null;
                    httpURLConnectionA2 = null;
                }
                yp.a(httpURLConnectionA2, this.b);
                final d dVarA5 = d.a().a(responseCode).a(bArr2).b(bArr).a(jElapsedRealtime2 - jElapsedRealtime3).a(th2).a();
                cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        dg.b.a(cVar, dVarA5);
                    }
                });
                return;
            }
            long jElapsedRealtime4 = SystemClock.elapsedRealtime();
            try {
                httpURLConnectionA = a(cVar);
                try {
                    if (cVar.d != null && cVar.d.length > 0) {
                        httpURLConnectionA.setDoOutput(true);
                        httpURLConnectionA.setFixedLengthStreamingMode(cVar.d.length);
                        if (((Boolean) this.b.a(sj.A)).booleanValue()) {
                            try {
                                OutputStream outputStream2 = httpURLConnectionA.getOutputStream();
                                outputStream2.write(cVar.d);
                                outputStream2.close();
                            } catch (Throwable th18) {
                                CollectionUtils.putStringIfValid("details", "outputStream", new HashMap());
                                this.b.D().a("NetworkCommunicationThread", "processRequest", th18);
                                throw th18;
                            }
                        } else {
                            OutputStream outputStream3 = httpURLConnectionA.getOutputStream();
                            outputStream3.write(cVar.d);
                            outputStream3.close();
                        }
                    }
                    jElapsedRealtime4 = SystemClock.elapsedRealtime();
                    responseCode = httpURLConnectionA.getResponseCode();
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (responseCode > 0) {
                        com.applovin.impl.sdk.j jVar = this.b;
                        sj sjVar = sj.A;
                        try {
                            if (((Boolean) jVar.a(sjVar)).booleanValue()) {
                                try {
                                    InputStream inputStream6 = httpURLConnectionA.getInputStream();
                                    try {
                                        bArrA = e4.a(inputStream6, this.b);
                                        inputStream4 = inputStream6;
                                    } catch (Throwable th19) {
                                        th = th19;
                                        HashMap map5 = new HashMap();
                                        CollectionUtils.putStringIfValid("details", "responseDataInputStream", map5);
                                        this.b.D().a("NetworkCommunicationThread", "processRequest", th, map5);
                                        throw th;
                                    }
                                } catch (Throwable th20) {
                                    th = th20;
                                }
                            } else {
                                InputStream inputStream7 = httpURLConnectionA.getInputStream();
                                bArrA = e4.a(inputStream7, this.b);
                                inputStream4 = inputStream7;
                            }
                            bArrA2 = null;
                            inputStream3 = inputStream4;
                        } catch (Throwable th21) {
                            th = th21;
                            r4 = sjVar;
                            try {
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                                this.b.I().a("NetworkCommunicationThread", th);
                                this.b.I();
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.b.I().d("NetworkCommunicationThread", "Failed to make HTTP request", th);
                                }
                                if (httpURLConnectionA != null) {
                                    try {
                                        errorStream = httpURLConnectionA.getErrorStream();
                                        try {
                                            bArrA2 = e4.a(errorStream, this.b);
                                            inputStream2 = errorStream;
                                            bArrA = null;
                                            r5 = r4;
                                        } catch (Throwable th22) {
                                            th = th22;
                                            try {
                                                if (((Boolean) this.b.a(sj.A)).booleanValue()) {
                                                    HashMap map6 = new HashMap();
                                                    CollectionUtils.putStringIfValid("details", "responseErrorDataInputStream", map6);
                                                    this.b.D().a("NetworkCommunicationThread", "processRequest", th, map6);
                                                }
                                                inputStream2 = errorStream;
                                                bArrA = null;
                                                bArrA2 = null;
                                                r5 = r4;
                                            } catch (Throwable th23) {
                                                th = th23;
                                                inputStream = errorStream;
                                                yp.a((Closeable) r4, this.b);
                                                yp.a(inputStream, this.b);
                                                yp.a(httpURLConnectionA, this.b);
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th24) {
                                        th = th24;
                                        errorStream = null;
                                    }
                                } else {
                                    bArrA = null;
                                    bArrA2 = null;
                                    r6 = r4;
                                }
                                yp.a((Closeable) r5, this.b);
                                yp.a(inputStream2, this.b);
                                yp.a(httpURLConnectionA, this.b);
                                final d dVarA6 = d.a().a(responseCode).a(bArrA).b(bArrA2).a(jElapsedRealtime - jElapsedRealtime4).a(th).a();
                                cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        dg.b.b(cVar, dVarA6);
                                    }
                                });
                            } catch (Throwable th25) {
                                th = th25;
                                inputStream = null;
                            }
                        }
                    } else {
                        bArrA = null;
                        bArrA2 = null;
                        inputStream3 = null;
                    }
                    th = null;
                    r6 = inputStream3;
                } catch (Throwable th26) {
                    th = th26;
                    r4 = 0;
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    this.b.I().a("NetworkCommunicationThread", th);
                    this.b.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.b.I().d("NetworkCommunicationThread", "Failed to make HTTP request", th);
                    }
                    if (httpURLConnectionA != null) {
                        errorStream = httpURLConnectionA.getErrorStream();
                        bArrA2 = e4.a(errorStream, this.b);
                        inputStream2 = errorStream;
                        bArrA = null;
                        r5 = r4;
                    } else {
                        bArrA = null;
                        bArrA2 = null;
                        r6 = r4;
                        inputStream2 = null;
                        r5 = r6;
                    }
                    yp.a((Closeable) r5, this.b);
                    yp.a(inputStream2, this.b);
                    yp.a(httpURLConnectionA, this.b);
                    final d dVarA7 = d.a().a(responseCode).a(bArrA).b(bArrA2).a(jElapsedRealtime - jElapsedRealtime4).a(th).a();
                    cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            dg.b.b(cVar, dVarA7);
                        }
                    });
                }
            } catch (Throwable th27) {
                th = th27;
                r4 = 0;
                httpURLConnectionA = null;
            }
            inputStream2 = null;
            r5 = r6;
            yp.a((Closeable) r5, this.b);
            yp.a(inputStream2, this.b);
            yp.a(httpURLConnectionA, this.b);
            final d dVarA8 = d.a().a(responseCode).a(bArrA).b(bArrA2).a(jElapsedRealtime - jElapsedRealtime4).a(th).a();
            cVar.h.execute(new Runnable() { // from class: com.applovin.impl.dg$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dg.b.b(cVar, dVarA8);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(c cVar, d dVar) {
            cVar.g.accept(dVar);
        }

        private void a() throws Throwable {
            b((c) this.a.take());
        }
    }

    public void a() {
        for (int i = 0; i < ((Integer) this.b.a(sj.T)).intValue(); i++) {
            new b(this.a, i, this.b).start();
        }
    }

    public static class c implements Comparable {
        private static final AtomicInteger j = new AtomicInteger();
        private final String a;
        private final String b;
        private final Map c;
        private final byte[] d;
        private final int f;
        private final Consumer g;
        private final Executor h;
        private final int i;

        private c(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c != null ? aVar.c : Collections.emptyMap();
            this.d = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
            this.h = aVar.g;
            this.i = j.incrementAndGet();
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return this.i - cVar.i;
        }

        public static class a {
            private String a;
            private String b;
            private Map c = new HashMap();
            private byte[] d;
            private int e;
            private Consumer f;
            private Executor g;

            public a b(String str) {
                this.b = str;
                return this;
            }

            public a a(byte[] bArr) {
                this.d = bArr;
                return this;
            }

            public a a(String str) {
                this.a = str;
                return this;
            }

            public a a(String str, String str2) {
                this.c.put(str, str2);
                return this;
            }

            public a a(Map map) {
                if (map == null) {
                    map = new HashMap();
                }
                this.c = map;
                return this;
            }

            public a a(Consumer consumer) {
                this.f = consumer;
                return this;
            }

            public a a(Executor executor) {
                this.g = executor;
                return this;
            }

            public a a(int i) {
                this.e = i;
                return this;
            }

            public c a() {
                return new c(this);
            }
        }
    }

    public static class d {
        private final int a;
        private final byte[] b;
        private final byte[] c;
        private final long d;
        private final Throwable e;

        public static a a() {
            return new a();
        }

        private d(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
        }

        public int c() throws Throwable {
            Throwable th = this.e;
            if (th == null) {
                return this.a;
            }
            throw th;
        }

        public int b() {
            return this.a;
        }

        public byte[] d() throws Throwable {
            Throwable th = this.e;
            if (th == null) {
                return this.b;
            }
            throw th;
        }

        public byte[] f() {
            return this.c;
        }

        public long e() {
            return this.d;
        }

        public static class a {
            private int a;
            private byte[] b;
            private byte[] c;
            private long d;
            private Throwable e;

            public a a(int i) {
                this.a = i;
                return this;
            }

            public a b(byte[] bArr) {
                this.c = bArr;
                return this;
            }

            public a a(byte[] bArr) {
                this.b = bArr;
                return this;
            }

            public a a(long j) {
                this.d = j;
                return this;
            }

            public a a(Throwable th) {
                this.e = th;
                return this;
            }

            public d a() {
                return new d(this);
            }
        }
    }
}
