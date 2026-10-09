package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.assetpacks.AssetPackLocation;
import com.google.android.play.core.assetpacks.AssetPackManager;
import com.google.android.play.core.assetpacks.AssetPackManagerFactory;
import com.google.android.play.core.assetpacks.AssetPackState;
import com.google.android.play.core.assetpacks.AssetPackStateUpdateListener;
import com.google.android.play.core.assetpacks.AssetPackStates;
import com.google.android.play.core.tasks.OnCompleteListener;
import com.google.android.play.core.tasks.OnSuccessListener;
import com.google.android.play.core.tasks.RuntimeExecutionException;
import com.google.android.play.core.tasks.Task;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class a implements com.unity3d.player.d {
    private static a a;
    private AssetPackManager b;
    private HashSet c;
    private Object d;

    /* JADX INFO: renamed from: com.unity3d.player.a$a, reason: collision with other inner class name */
    private static class RunnableC0126a implements Runnable {
        private Set a;
        private String b;
        private int c;
        private long d;
        private long e;
        private int f;
        private int g;

        RunnableC0126a(Set set, String str, int i, long j, long j2, int i2, int i3) {
            this.a = set;
            this.b = str;
            this.c = i;
            this.d = j;
            this.e = j2;
            this.f = i2;
            this.g = i3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((IAssetPackManagerDownloadStatusCallback) it.next()).onStatusUpdate(this.b, this.c, this.d, this.e, this.f, this.g);
            }
        }
    }

    private class b implements AssetPackStateUpdateListener {
        private HashSet b;
        private Looper c;

        public b(a aVar, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
            this(iAssetPackManagerDownloadStatusCallback, Looper.myLooper());
        }

        public b(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, Looper looper) {
            HashSet hashSet = new HashSet();
            this.b = hashSet;
            hashSet.add(iAssetPackManagerDownloadStatusCallback);
            this.c = looper;
        }

        private static Set a(HashSet hashSet) {
            return (Set) hashSet.clone();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public synchronized void onStateUpdate(AssetPackState assetPackState) {
            if (assetPackState.status() == 4 || assetPackState.status() == 5 || assetPackState.status() == 0) {
                synchronized (a.a) {
                    a.this.c.remove(assetPackState.name());
                    if (a.this.c.isEmpty()) {
                        a aVar = a.this;
                        aVar.a(aVar.d);
                        a.c(a.this);
                    }
                }
            }
            if (this.b.size() == 0) {
                return;
            }
            new Handler(this.c).post(new RunnableC0126a(a(this.b), assetPackState.name(), assetPackState.status(), assetPackState.totalBytesToDownload(), assetPackState.bytesDownloaded(), assetPackState.transferProgressPercentage(), assetPackState.errorCode()));
        }

        public final synchronized void a(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
            this.b.add(iAssetPackManagerDownloadStatusCallback);
        }
    }

    private static class c implements OnSuccessListener {
        private IAssetPackManagerMobileDataConfirmationCallback a;
        private Looper b = Looper.myLooper();

        /* JADX INFO: renamed from: com.unity3d.player.a$c$a, reason: collision with other inner class name */
        private static class RunnableC0127a implements Runnable {
            private IAssetPackManagerMobileDataConfirmationCallback a;
            private boolean b;

            RunnableC0127a(IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback, boolean z) {
                this.a = iAssetPackManagerMobileDataConfirmationCallback;
                this.b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.a.onMobileDataConfirmationResult(this.b);
            }
        }

        public c(IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback) {
            this.a = iAssetPackManagerMobileDataConfirmationCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(Integer num) {
            if (this.a != null) {
                new Handler(this.b).post(new RunnableC0127a(this.a, num.intValue() == -1));
            }
        }
    }

    private static class d implements OnCompleteListener {
        private IAssetPackManagerDownloadStatusCallback a;
        private Looper b = Looper.myLooper();
        private String c;

        public d(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, String str) {
            this.a = iAssetPackManagerDownloadStatusCallback;
            this.c = str;
        }

        private void a(String str, int i, int i2, long j) {
            new Handler(this.b).post(new RunnableC0126a(Collections.singleton(this.a), str, i, j, i == 4 ? j : 0L, 0, i2));
        }

        public final void onComplete(Task task) {
            try {
                AssetPackStates assetPackStates = (AssetPackStates) task.getResult();
                Map mapPackStates = assetPackStates.packStates();
                if (mapPackStates.size() == 0) {
                    return;
                }
                for (AssetPackState assetPackState : mapPackStates.values()) {
                    if (assetPackState.errorCode() != 0 || assetPackState.status() == 4 || assetPackState.status() == 5 || assetPackState.status() == 0) {
                        a(assetPackState.name(), assetPackState.status(), assetPackState.errorCode(), assetPackStates.totalBytes());
                    } else {
                        a.a.a(assetPackState.name(), this.a, this.b);
                    }
                }
            } catch (RuntimeExecutionException e) {
                a(this.c, 0, e.getErrorCode(), 0L);
            }
        }
    }

    private static class e implements OnCompleteListener {
        private IAssetPackManagerStatusQueryCallback a;
        private Looper b = Looper.myLooper();
        private String[] c;

        /* JADX INFO: renamed from: com.unity3d.player.a$e$a, reason: collision with other inner class name */
        private static class RunnableC0128a implements Runnable {
            private IAssetPackManagerStatusQueryCallback a;
            private long b;
            private String[] c;
            private int[] d;
            private int[] e;

            RunnableC0128a(IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback, long j, String[] strArr, int[] iArr, int[] iArr2) {
                this.a = iAssetPackManagerStatusQueryCallback;
                this.b = j;
                this.c = strArr;
                this.d = iArr;
                this.e = iArr2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.a.onStatusResult(this.b, this.c, this.d, this.e);
            }
        }

        public e(IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback, String[] strArr) {
            this.a = iAssetPackManagerStatusQueryCallback;
            this.c = strArr;
        }

        public final void onComplete(Task task) {
            if (this.a == null) {
                return;
            }
            int i = 0;
            try {
                AssetPackStates assetPackStates = (AssetPackStates) task.getResult();
                Map mapPackStates = assetPackStates.packStates();
                int size = mapPackStates.size();
                String[] strArr = new String[size];
                int[] iArr = new int[size];
                int[] iArr2 = new int[size];
                for (AssetPackState assetPackState : mapPackStates.values()) {
                    strArr[i] = assetPackState.name();
                    iArr[i] = assetPackState.status();
                    iArr2[i] = assetPackState.errorCode();
                    i++;
                }
                new Handler(this.b).post(new RunnableC0128a(this.a, assetPackStates.totalBytes(), strArr, iArr, iArr2));
            } catch (RuntimeExecutionException e) {
                String message = e.getMessage();
                for (String str : this.c) {
                    if (message.contains(str)) {
                        new Handler(this.b).post(new RunnableC0128a(this.a, 0L, new String[]{str}, new int[]{0}, new int[]{e.getErrorCode()}));
                        return;
                    }
                }
                String[] strArr2 = this.c;
                int[] iArr3 = new int[strArr2.length];
                int[] iArr4 = new int[strArr2.length];
                for (int i2 = 0; i2 < this.c.length; i2++) {
                    iArr3[i2] = 0;
                    iArr4[i2] = e.getErrorCode();
                }
                new Handler(this.b).post(new RunnableC0128a(this.a, 0L, this.c, iArr3, iArr4));
            }
        }
    }

    private a(Context context) {
        if (a != null) {
            throw new RuntimeException("AssetPackManagerWrapper should be created only once. Use getInstance() instead.");
        }
        this.b = AssetPackManagerFactory.getInstance(context);
        this.c = new HashSet();
    }

    public static com.unity3d.player.d a(Context context) {
        if (a == null) {
            a = new a(context);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback, Looper looper) {
        synchronized (a) {
            Object obj = this.d;
            if (obj == null) {
                b bVar = new b(iAssetPackManagerDownloadStatusCallback, looper);
                this.b.registerListener(bVar);
                this.d = bVar;
            } else {
                ((b) obj).a(iAssetPackManagerDownloadStatusCallback);
            }
            this.c.add(str);
            this.b.fetch(Collections.singletonList(str));
        }
    }

    static /* synthetic */ Object c(a aVar) {
        aVar.d = null;
        return null;
    }

    @Override // com.unity3d.player.d
    public final Object a(IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        b bVar = new b(this, iAssetPackManagerDownloadStatusCallback);
        this.b.registerListener(bVar);
        return bVar;
    }

    @Override // com.unity3d.player.d
    public final String a(String str) {
        AssetPackLocation packLocation = this.b.getPackLocation(str);
        return packLocation == null ? "" : packLocation.assetsPath();
    }

    @Override // com.unity3d.player.d
    public final void a(Activity activity, IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback) {
        this.b.showCellularDataConfirmation(activity).addOnSuccessListener(new c(iAssetPackManagerMobileDataConfirmationCallback));
    }

    @Override // com.unity3d.player.d
    public final void a(Object obj) {
        if (obj instanceof b) {
            this.b.unregisterListener((b) obj);
        }
    }

    @Override // com.unity3d.player.d
    public final void a(String[] strArr) {
        this.b.cancel(Arrays.asList(strArr));
    }

    @Override // com.unity3d.player.d
    public final void a(String[] strArr, IAssetPackManagerDownloadStatusCallback iAssetPackManagerDownloadStatusCallback) {
        for (String str : strArr) {
            this.b.getPackStates(Collections.singletonList(str)).addOnCompleteListener(new d(iAssetPackManagerDownloadStatusCallback, str));
        }
    }

    @Override // com.unity3d.player.d
    public final void a(String[] strArr, IAssetPackManagerStatusQueryCallback iAssetPackManagerStatusQueryCallback) {
        this.b.getPackStates(Arrays.asList(strArr)).addOnCompleteListener(new e(iAssetPackManagerStatusQueryCallback, strArr));
    }

    @Override // com.unity3d.player.d
    public final void b(String str) {
        this.b.removePack(str);
    }
}
