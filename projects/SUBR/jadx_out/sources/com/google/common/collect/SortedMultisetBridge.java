package com.google.common.collect;

import com.android.tools.r8.annotations.SynthesizedClassV2;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
@ElementTypesAreNonnullByDefault
interface SortedMultisetBridge<E> extends Multiset<E> {
    @Override // com.google.common.collect.Multiset
    SortedSet<E> elementSet();

    /* JADX INFO: renamed from: com.google.common.collect.SortedMultisetBridge$-CC, reason: invalid class name */
    @SynthesizedClassV2(kind = 8, versionHash = "7a5b85d3ee2e0991ca3502602e9389a98f55c0576b887125894a7ec03823f8d3")
    public final /* synthetic */ class CC<E> {
    }
}
