package com.onesignal.session.internal.outcomes.impl;

import android.content.ContentValues;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.Constants;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.database.ICursor;
import com.onesignal.core.internal.database.IDatabase;
import com.onesignal.core.internal.database.IDatabaseProvider;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.internal.influence.Influence;
import com.onesignal.session.internal.influence.InfluenceChannel;
import com.onesignal.session.internal.influence.InfluenceType;
import com.onesignal.session.internal.outcomes.migrations.RemoveZeroSessionTimeRecords;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: OutcomeEventsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J \u0010\u000e\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0011\u0010\u0011\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0018H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J4\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0002J-\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00182\u0006\u0010$\u001a\u00020 2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020#0\u0018H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010&J*\u0010'\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010)\u001a\u00020 H\u0002J\u0019\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u0019\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsRepository;", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;", "_databaseProvider", "Lcom/onesignal/core/internal/database/IDatabaseProvider;", "(Lcom/onesignal/core/internal/database/IDatabaseProvider;)V", "addIdToListFromChannel", "", "cachedUniqueOutcomes", "", "Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;", "channelIds", "Lorg/json/JSONArray;", "channel", "Lcom/onesignal/session/internal/influence/InfluenceChannel;", "addIdsToListFromSource", "sourceBody", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;", "cleanCachedUniqueOutcomeEventNotifications", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOldOutcomeEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;", "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllEventsToSend", "", "getIAMInfluenceSource", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;", "iamInfluenceType", "Lcom/onesignal/session/internal/influence/InfluenceType;", "directSourceBody", "indirectSourceBody", "iamIds", "", Constants.ScionAnalytics.PARAM_SOURCE, "getNotCachedUniqueInfluencesForOutcome", "Lcom/onesignal/session/internal/influence/Influence;", "name", "influences", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getNotificationInfluenceSource", "notificationInfluenceType", "notificationIds", "saveOutcomeEvent", "eventParams", "saveUniqueOutcomeEventParams", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OutcomeEventsRepository implements IOutcomeEventsRepository {
    private final IDatabaseProvider _databaseProvider;

    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InfluenceType.values().length];
            iArr[InfluenceType.DIRECT.ordinal()] = 1;
            iArr[InfluenceType.INDIRECT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getAllEventsToSend$1, reason: invalid class name */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository", f = "OutcomeEventsRepository.kt", i = {0}, l = {104}, m = "getAllEventsToSend", n = {"events"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsRepository.this.getAllEventsToSend(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getNotCachedUniqueInfluencesForOutcome$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository", f = "OutcomeEventsRepository.kt", i = {0}, l = {286}, m = "getNotCachedUniqueInfluencesForOutcome", n = {"uniqueInfluences"}, s = {"L$0"})
    static final class C03171 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03171(Continuation<? super C03171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsRepository.this.getNotCachedUniqueInfluencesForOutcome(null, null, this);
        }
    }

    public OutcomeEventsRepository(IDatabaseProvider _databaseProvider) {
        Intrinsics.checkNotNullParameter(_databaseProvider, "_databaseProvider");
        this._databaseProvider = _databaseProvider;
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$deleteOldOutcomeEvent$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$deleteOldOutcomeEvent$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03152 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ OutcomeEventParams $event;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03152(OutcomeEventParams outcomeEventParams, Continuation<? super C03152> continuation) {
            super(2, continuation);
            this.$event = outcomeEventParams;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OutcomeEventsRepository.this.new C03152(this.$event, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03152) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            OutcomeEventsRepository.this._databaseProvider.getOs().delete("outcome", "timestamp = ?", new String[]{String.valueOf(this.$event.getTimestamp())});
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.session.internal.outcomes.impl.IOutcomeEventsRepository
    public Object deleteOldOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C03152(outcomeEventParams, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$saveOutcomeEvent$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Landroid/content/ContentValues;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$saveOutcomeEvent$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03192 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ContentValues>, Object> {
        final /* synthetic */ OutcomeEventParams $eventParams;
        int label;
        final /* synthetic */ OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03192(OutcomeEventParams outcomeEventParams, OutcomeEventsRepository outcomeEventsRepository, Continuation<? super C03192> continuation) {
            super(2, continuation);
            this.$eventParams = outcomeEventParams;
            this.this$0 = outcomeEventsRepository;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03192(this.$eventParams, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ContentValues> continuation) {
            return ((C03192) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r1v0, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r2v0, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r3v0, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r3v7, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r3v9, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r4v3, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r4v4, types: [T, org.json.JSONArray] */
        /* JADX WARN: Type inference failed for: r4v6, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r5v3, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        /* JADX WARN: Type inference failed for: r5v5, types: [T, com.onesignal.session.internal.influence.InfluenceType] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            OutcomeSourceBody indirectBody;
            OutcomeSourceBody directBody;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new JSONArray();
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = new JSONArray();
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                objectRef3.element = InfluenceType.UNATTRIBUTED;
                Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
                objectRef4.element = InfluenceType.UNATTRIBUTED;
                OutcomeSource outcomeSource = this.$eventParams.getOutcomeSource();
                if (outcomeSource != null && (directBody = outcomeSource.getDirectBody()) != null) {
                    ?? notificationIds = directBody.getNotificationIds();
                    if (notificationIds != 0 && notificationIds.length() > 0) {
                        objectRef3.element = InfluenceType.DIRECT;
                        objectRef.element = notificationIds;
                    }
                    ?? inAppMessagesIds = directBody.getInAppMessagesIds();
                    if (inAppMessagesIds != 0 && inAppMessagesIds.length() > 0) {
                        objectRef4.element = InfluenceType.DIRECT;
                        objectRef2.element = inAppMessagesIds;
                    }
                }
                OutcomeSource outcomeSource2 = this.$eventParams.getOutcomeSource();
                if (outcomeSource2 != null && (indirectBody = outcomeSource2.getIndirectBody()) != null) {
                    ?? notificationIds2 = indirectBody.getNotificationIds();
                    if (notificationIds2 != 0 && notificationIds2.length() > 0) {
                        objectRef3.element = InfluenceType.INDIRECT;
                        objectRef.element = notificationIds2;
                    }
                    ?? inAppMessagesIds2 = indirectBody.getInAppMessagesIds();
                    if (inAppMessagesIds2 != 0 && inAppMessagesIds2.length() > 0) {
                        objectRef4.element = InfluenceType.INDIRECT;
                        objectRef2.element = inAppMessagesIds2;
                    }
                }
                ContentValues contentValues = new ContentValues();
                OutcomeEventParams outcomeEventParams = this.$eventParams;
                contentValues.put("notification_ids", ((JSONArray) objectRef.element).toString());
                contentValues.put(OutcomeEventsTable.COLUMN_NAME_IAM_IDS, ((JSONArray) objectRef2.element).toString());
                String string = ((InfluenceType) objectRef3.element).toString();
                Locale ROOT = Locale.ROOT;
                Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
                String lowerCase = string.toLowerCase(ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                contentValues.put(OutcomeEventsTable.COLUMN_NAME_NOTIFICATION_INFLUENCE_TYPE, lowerCase);
                String string2 = ((InfluenceType) objectRef4.element).toString();
                Locale ROOT2 = Locale.ROOT;
                Intrinsics.checkNotNullExpressionValue(ROOT2, "ROOT");
                String lowerCase2 = string2.toLowerCase(ROOT2);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                contentValues.put(OutcomeEventsTable.COLUMN_NAME_IAM_INFLUENCE_TYPE, lowerCase2);
                contentValues.put("name", outcomeEventParams.getOutcomeId());
                contentValues.put("weight", Boxing.boxFloat(outcomeEventParams.getWeight()));
                contentValues.put("timestamp", Boxing.boxLong(outcomeEventParams.getTimestamp()));
                contentValues.put("session_time", Boxing.boxLong(outcomeEventParams.getSessionTime()));
                this.this$0._databaseProvider.getOs().insert("outcome", null, contentValues);
                return contentValues;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.onesignal.session.internal.outcomes.impl.IOutcomeEventsRepository
    public Object saveOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C03192(outcomeEventParams, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.session.internal.outcomes.impl.IOutcomeEventsRepository
    public Object getAllEventsToSend(Continuation<? super List<OutcomeEventParams>> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            List list = (List) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            return list;
        }
        ResultKt.throwOnFailure(obj);
        ArrayList arrayList = new ArrayList();
        CoroutineDispatcher io = Dispatchers.getIO();
        C03162 c03162 = new C03162(arrayList, null);
        anonymousClass1.L$0 = arrayList;
        anonymousClass1.label = 1;
        return BuildersKt.withContext(io, c03162, anonymousClass1) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getAllEventsToSend$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getAllEventsToSend$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03162 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<OutcomeEventParams> $events;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03162(List<OutcomeEventParams> list, Continuation<? super C03162> continuation) {
            super(2, continuation);
            this.$events = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OutcomeEventsRepository.this.new C03162(this.$events, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03162) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            RemoveZeroSessionTimeRecords.INSTANCE.run(OutcomeEventsRepository.this._databaseProvider);
            IDatabase os = OutcomeEventsRepository.this._databaseProvider.getOs();
            final OutcomeEventsRepository outcomeEventsRepository = OutcomeEventsRepository.this;
            final List<OutcomeEventParams> list = this.$events;
            IDatabase.DefaultImpls.query$default(os, "outcome", null, null, null, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository.getAllEventsToSend.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor cursor) {
                    Intrinsics.checkNotNullParameter(cursor, "cursor");
                    if (cursor.moveToFirst()) {
                        do {
                            InfluenceType influenceTypeFromString = InfluenceType.INSTANCE.fromString(cursor.getString(OutcomeEventsTable.COLUMN_NAME_NOTIFICATION_INFLUENCE_TYPE));
                            InfluenceType influenceTypeFromString2 = InfluenceType.INSTANCE.fromString(cursor.getString(OutcomeEventsTable.COLUMN_NAME_IAM_INFLUENCE_TYPE));
                            String optString = cursor.getOptString("notification_ids");
                            if (optString == null) {
                                optString = "[]";
                            }
                            String optString2 = cursor.getOptString(OutcomeEventsTable.COLUMN_NAME_IAM_IDS);
                            String str = optString2 == null ? "[]" : optString2;
                            String string = cursor.getString("name");
                            float f = cursor.getFloat("weight");
                            long j = cursor.getLong("timestamp");
                            long j2 = cursor.getLong("session_time");
                            try {
                                OutcomeSourceBody outcomeSourceBody = new OutcomeSourceBody(null, null, 3, null);
                                OutcomeSourceBody outcomeSourceBody2 = new OutcomeSourceBody(null, null, 3, null);
                                OutcomeSource notificationInfluenceSource = outcomeEventsRepository.getNotificationInfluenceSource(influenceTypeFromString, outcomeSourceBody, outcomeSourceBody2, optString);
                                outcomeEventsRepository.getIAMInfluenceSource(influenceTypeFromString2, outcomeSourceBody, outcomeSourceBody2, str, notificationInfluenceSource);
                                if (notificationInfluenceSource == null) {
                                    notificationInfluenceSource = new OutcomeSource(null, null);
                                }
                                list.add(new OutcomeEventParams(string, notificationInfluenceSource, f, j2, j));
                            } catch (JSONException e) {
                                Logging.error("Generating JSONArray from notifications ids outcome:JSON Failed.", e);
                            }
                        } while (cursor.moveToNext());
                    }
                }
            }, 254, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OutcomeSource getNotificationInfluenceSource(InfluenceType notificationInfluenceType, OutcomeSourceBody directSourceBody, OutcomeSourceBody indirectSourceBody, String notificationIds) {
        OutcomeSource outcomeSource;
        int i = WhenMappings.$EnumSwitchMapping$0[notificationInfluenceType.ordinal()];
        if (i == 1) {
            directSourceBody.setNotificationIds(new JSONArray(notificationIds));
            outcomeSource = new OutcomeSource(directSourceBody, null);
        } else if (i == 2) {
            indirectSourceBody.setNotificationIds(new JSONArray(notificationIds));
            outcomeSource = new OutcomeSource(null, indirectSourceBody);
        } else {
            return null;
        }
        return outcomeSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OutcomeSource getIAMInfluenceSource(InfluenceType iamInfluenceType, OutcomeSourceBody directSourceBody, OutcomeSourceBody indirectSourceBody, String iamIds, OutcomeSource source) {
        OutcomeSource directBody;
        OutcomeSource indirectBody;
        int i = WhenMappings.$EnumSwitchMapping$0[iamInfluenceType.ordinal()];
        if (i == 1) {
            directSourceBody.setInAppMessagesIds(new JSONArray(iamIds));
            return (source == null || (directBody = source.setDirectBody(directSourceBody)) == null) ? new OutcomeSource(directSourceBody, null) : directBody;
        }
        if (i != 2) {
            return source;
        }
        indirectSourceBody.setInAppMessagesIds(new JSONArray(iamIds));
        return (source == null || (indirectBody = source.setIndirectBody(indirectSourceBody)) == null) ? new OutcomeSource(null, indirectSourceBody) : indirectBody;
    }

    private final void addIdToListFromChannel(List<CachedUniqueOutcome> cachedUniqueOutcomes, JSONArray channelIds, InfluenceChannel channel) {
        if (channelIds != null) {
            int length = channelIds.length();
            for (int i = 0; i < length; i++) {
                try {
                    String influenceId = channelIds.getString(i);
                    Intrinsics.checkNotNullExpressionValue(influenceId, "influenceId");
                    cachedUniqueOutcomes.add(new CachedUniqueOutcome(influenceId, channel));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addIdsToListFromSource(List<CachedUniqueOutcome> cachedUniqueOutcomes, OutcomeSourceBody sourceBody) {
        if (sourceBody != null) {
            JSONArray inAppMessagesIds = sourceBody.getInAppMessagesIds();
            JSONArray notificationIds = sourceBody.getNotificationIds();
            addIdToListFromChannel(cachedUniqueOutcomes, inAppMessagesIds, InfluenceChannel.IAM);
            addIdToListFromChannel(cachedUniqueOutcomes, notificationIds, InfluenceChannel.NOTIFICATION);
        }
    }

    @Override // com.onesignal.session.internal.outcomes.impl.IOutcomeEventsRepository
    public Object saveUniqueOutcomeEventParams(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) throws Throwable {
        Logging.debug$default("OutcomeEventsCache.saveUniqueOutcomeEventParams(eventParams: " + outcomeEventParams + ')', null, 2, null);
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C03202(outcomeEventParams, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$saveUniqueOutcomeEventParams$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$saveUniqueOutcomeEventParams$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03202 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ OutcomeEventParams $eventParams;
        int label;
        final /* synthetic */ OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03202(OutcomeEventParams outcomeEventParams, OutcomeEventsRepository outcomeEventsRepository, Continuation<? super C03202> continuation) {
            super(2, continuation);
            this.$eventParams = outcomeEventParams;
            this.this$0 = outcomeEventsRepository;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03202(this.$eventParams, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03202) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String outcomeId = this.$eventParams.getOutcomeId();
            ArrayList<CachedUniqueOutcome> arrayList = new ArrayList();
            OutcomeSource outcomeSource = this.$eventParams.getOutcomeSource();
            OutcomeSourceBody directBody = outcomeSource != null ? outcomeSource.getDirectBody() : null;
            OutcomeSource outcomeSource2 = this.$eventParams.getOutcomeSource();
            OutcomeSourceBody indirectBody = outcomeSource2 != null ? outcomeSource2.getIndirectBody() : null;
            this.this$0.addIdsToListFromSource(arrayList, directBody);
            this.this$0.addIdsToListFromSource(arrayList, indirectBody);
            for (CachedUniqueOutcome cachedUniqueOutcome : arrayList) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("channel_influence_id", cachedUniqueOutcome.getInfluenceId());
                contentValues.put("channel_type", cachedUniqueOutcome.getChannel().getNameValue());
                contentValues.put("name", outcomeId);
                this.this$0._databaseProvider.getOs().insert("cached_unique_outcome", null, contentValues);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.session.internal.outcomes.impl.IOutcomeEventsRepository
    public Object getNotCachedUniqueInfluencesForOutcome(String str, List<Influence> list, Continuation<? super List<Influence>> continuation) {
        C03171 c03171;
        if (continuation instanceof C03171) {
            c03171 = (C03171) continuation;
            if ((c03171.label & Integer.MIN_VALUE) != 0) {
                c03171.label -= Integer.MIN_VALUE;
            } else {
                c03171 = new C03171(continuation);
            }
        } else {
            c03171 = new C03171(continuation);
        }
        Object obj = c03171.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03171.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            List list2 = (List) c03171.L$0;
            ResultKt.throwOnFailure(obj);
            return list2;
        }
        ResultKt.throwOnFailure(obj);
        ArrayList arrayList = new ArrayList();
        CoroutineDispatcher io = Dispatchers.getIO();
        C03182 c03182 = new C03182(list, str, this, arrayList, null);
        c03171.L$0 = arrayList;
        c03171.label = 1;
        return BuildersKt.withContext(io, c03182, c03171) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getNotCachedUniqueInfluencesForOutcome$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$getNotCachedUniqueInfluencesForOutcome$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03182 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<Influence> $influences;
        final /* synthetic */ String $name;
        final /* synthetic */ List<Influence> $uniqueInfluences;
        int label;
        final /* synthetic */ OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03182(List<Influence> list, String str, OutcomeEventsRepository outcomeEventsRepository, List<Influence> list2, Continuation<? super C03182> continuation) {
            super(2, continuation);
            this.$influences = list;
            this.$name = str;
            this.this$0 = outcomeEventsRepository;
            this.$uniqueInfluences = list2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03182(this.$influences, this.$name, this.this$0, this.$uniqueInfluences, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03182) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                for (Influence influence : this.$influences) {
                    final JSONArray jSONArray = new JSONArray();
                    JSONArray ids = influence.getIds();
                    if (ids != null) {
                        int length = ids.length();
                        for (int i = 0; i < length; i++) {
                            final String string = ids.getString(i);
                            IDatabase.DefaultImpls.query$default(this.this$0._databaseProvider.getOs(), "cached_unique_outcome", new String[0], "channel_influence_id = ? AND channel_type = ? AND name = ?", new String[]{string, influence.getInfluenceChannel().getNameValue(), this.$name}, null, null, null, "1", new Function1<ICursor, Unit>() { // from class: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository.getNotCachedUniqueInfluencesForOutcome.2.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                                    invoke2(iCursor);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(ICursor it) {
                                    Intrinsics.checkNotNullParameter(it, "it");
                                    if (it.getCount() == 0) {
                                        jSONArray.put(string);
                                    }
                                }
                            }, 112, null);
                        }
                        if (jSONArray.length() > 0) {
                            Influence influenceCopy = influence.copy();
                            influenceCopy.setIds(jSONArray);
                            this.$uniqueInfluences.add(influenceCopy);
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$cleanCachedUniqueOutcomeEventNotifications$2, reason: invalid class name */
    /* JADX INFO: compiled from: OutcomeEventsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsRepository$cleanCachedUniqueOutcomeEventNotifications$2", f = "OutcomeEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $notificationIdColumnName;
        final /* synthetic */ String $notificationTableName;
        int label;
        final /* synthetic */ OutcomeEventsRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, String str2, OutcomeEventsRepository outcomeEventsRepository, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$notificationTableName = str;
            this.$notificationIdColumnName = str2;
            this.this$0 = outcomeEventsRepository;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$notificationTableName, this.$notificationIdColumnName, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            StringBuilder sb = new StringBuilder("NOT EXISTS(SELECT NULL FROM ");
            sb.append(this.$notificationTableName);
            sb.append(" n WHERE n.");
            sb.append(this.$notificationIdColumnName);
            sb.append(" = channel_influence_id AND channel_type = \"");
            String nameValue = InfluenceChannel.NOTIFICATION.getNameValue();
            Locale ROOT = Locale.ROOT;
            Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
            String lowerCase = nameValue.toLowerCase(ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            sb.append(lowerCase);
            sb.append("\")");
            this.this$0._databaseProvider.getOs().delete("cached_unique_outcome", sb.toString(), null);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.session.internal.outcomes.impl.IOutcomeEventsRepository
    public Object cleanCachedUniqueOutcomeEventNotifications(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(OneSignalDbContract.NotificationTable.TABLE_NAME, "notification_id", this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
