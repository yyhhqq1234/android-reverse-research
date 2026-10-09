package com.applovin.mediation;

import com.applovin.impl.mediation.MaxSegmentCollectionImpl;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface MaxSegmentCollection {

    /* JADX INFO: renamed from: com.applovin.mediation.MaxSegmentCollection$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Builder builder() {
            return new MaxSegmentCollectionImpl.BuilderImpl();
        }
    }

    public interface Builder {
        Builder addSegment(MaxSegment maxSegment);

        MaxSegmentCollection build();
    }

    List<MaxSegment> getSegments();
}
