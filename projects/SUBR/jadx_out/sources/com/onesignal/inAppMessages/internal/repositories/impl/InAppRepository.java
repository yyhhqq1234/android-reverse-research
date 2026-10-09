package com.onesignal.inAppMessages.internal.repositories.impl;

import android.content.ContentValues;
import com.onesignal.common.JSONUtils;
import com.onesignal.core.internal.database.ICursor;
import com.onesignal.core.internal.database.IDatabase;
import com.onesignal.core.internal.database.IDatabaseProvider;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.InAppMessage;
import com.onesignal.inAppMessages.internal.InAppMessageRedisplayStats;
import com.onesignal.inAppMessages.internal.preferences.IInAppPreferencesController;
import com.onesignal.inAppMessages.internal.repositories.IInAppRepository;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: InAppRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\t\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/onesignal/inAppMessages/internal/repositories/impl/InAppRepository;", "Lcom/onesignal/inAppMessages/internal/repositories/IInAppRepository;", "_databaseProvider", "Lcom/onesignal/core/internal/database/IDatabaseProvider;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "_prefs", "Lcom/onesignal/inAppMessages/internal/preferences/IInAppPreferencesController;", "(Lcom/onesignal/core/internal/database/IDatabaseProvider;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/inAppMessages/internal/preferences/IInAppPreferencesController;)V", "cleanCachedInAppMessages", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "listInAppMessages", "", "Lcom/onesignal/inAppMessages/internal/InAppMessage;", "saveInAppMessage", "inAppMessage", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InAppRepository implements IInAppRepository {
    public static final long IAM_CACHE_DATA_LIFETIME = 15552000;
    private final IDatabaseProvider _databaseProvider;
    private final IInAppPreferencesController _prefs;
    private final ITime _time;

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$listInAppMessages$1, reason: invalid class name */
    /* JADX INFO: compiled from: InAppRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository", f = "InAppRepository.kt", i = {0}, l = {68}, m = "listInAppMessages", n = {"inAppMessages"}, s = {"L$0"})
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
            return InAppRepository.this.listInAppMessages(this);
        }
    }

    public InAppRepository(IDatabaseProvider _databaseProvider, ITime _time, IInAppPreferencesController _prefs) {
        Intrinsics.checkNotNullParameter(_databaseProvider, "_databaseProvider");
        Intrinsics.checkNotNullParameter(_time, "_time");
        Intrinsics.checkNotNullParameter(_prefs, "_prefs");
        this._databaseProvider = _databaseProvider;
        this._time = _time;
        this._prefs = _prefs;
    }

    @Override // com.onesignal.inAppMessages.internal.repositories.IInAppRepository
    public Object saveInAppMessage(InAppMessage inAppMessage, Continuation<? super Unit> continuation) throws Throwable {
        ContentValues contentValues = new ContentValues();
        contentValues.put("message_id", inAppMessage.getMessageId());
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_NAME_DISPLAY_QUANTITY, Boxing.boxInt(inAppMessage.getRedisplayStats().getDisplayQuantity()));
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_NAME_LAST_DISPLAY, Boxing.boxLong(inAppMessage.getRedisplayStats().getLastDisplayTime()));
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_CLICK_IDS, inAppMessage.getClickedClickIds().toString());
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_DISPLAYED_IN_SESSION, Boxing.boxBoolean(inAppMessage.getDisplayedInSession()));
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02422(contentValues, inAppMessage, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$saveInAppMessage$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$saveInAppMessage$2", f = "InAppRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02422 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessage $inAppMessage;
        final /* synthetic */ ContentValues $values;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02422(ContentValues contentValues, InAppMessage inAppMessage, Continuation<? super C02422> continuation) {
            super(2, continuation);
            this.$values = contentValues;
            this.$inAppMessage = inAppMessage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InAppRepository.this.new C02422(this.$values, this.$inAppMessage, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02422) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (InAppRepository.this._databaseProvider.getOs().update(OneSignalDbContract.InAppMessageTable.TABLE_NAME, this.$values, "message_id = ?", new String[]{this.$inAppMessage.getMessageId()}) == 0) {
                InAppRepository.this._databaseProvider.getOs().insert(OneSignalDbContract.InAppMessageTable.TABLE_NAME, null, this.$values);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.repositories.IInAppRepository
    public Object listInAppMessages(Continuation<? super List<InAppMessage>> continuation) {
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
        C02412 c02412 = new C02412(arrayList, null);
        anonymousClass1.L$0 = arrayList;
        anonymousClass1.label = 1;
        return BuildersKt.withContext(io, c02412, anonymousClass1) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$listInAppMessages$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$listInAppMessages$2", f = "InAppRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02412 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<InAppMessage> $inAppMessages;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02412(List<InAppMessage> list, Continuation<? super C02412> continuation) {
            super(2, continuation);
            this.$inAppMessages = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InAppRepository.this.new C02412(this.$inAppMessages, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02412) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                IDatabase os = InAppRepository.this._databaseProvider.getOs();
                final InAppRepository inAppRepository = InAppRepository.this;
                final List<InAppMessage> list = this.$inAppMessages;
                IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.InAppMessageTable.TABLE_NAME, null, null, null, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository.listInAppMessages.2.1
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
                        if (it.moveToFirst()) {
                            do {
                                list.add(new InAppMessage(it.getString("message_id"), JSONUtils.INSTANCE.newStringSetFromJSONArray(new JSONArray(it.getString(OneSignalDbContract.InAppMessageTable.COLUMN_CLICK_IDS))), it.getInt(OneSignalDbContract.InAppMessageTable.COLUMN_DISPLAYED_IN_SESSION) == 1, new InAppMessageRedisplayStats(it.getInt(OneSignalDbContract.InAppMessageTable.COLUMN_NAME_DISPLAY_QUANTITY), it.getLong(OneSignalDbContract.InAppMessageTable.COLUMN_NAME_LAST_DISPLAY), inAppRepository._time), inAppRepository._time));
                            } while (it.moveToNext());
                        }
                    }
                }, 254, null);
            } catch (JSONException e) {
                Logging.error("Generating JSONArray from iam click ids:JSON Failed.", e);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$cleanCachedInAppMessages$2, reason: invalid class name */
    /* JADX INFO: compiled from: InAppRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository$cleanCachedInAppMessages$2", f = "InAppRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InAppRepository.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            LinkedHashSet linkedHashSet;
            LinkedHashSet linkedHashSet2;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String[] strArr = {"message_id", OneSignalDbContract.InAppMessageTable.COLUMN_CLICK_IDS};
            String[] strArr2 = {String.valueOf((System.currentTimeMillis() / 1000) - InAppRepository.IAM_CACHE_DATA_LIFETIME)};
            final LinkedHashSet linkedHashSet3 = new LinkedHashSet();
            final LinkedHashSet linkedHashSet4 = new LinkedHashSet();
            try {
                linkedHashSet = linkedHashSet4;
                linkedHashSet2 = linkedHashSet3;
                try {
                    IDatabase.DefaultImpls.query$default(InAppRepository.this._databaseProvider.getOs(), OneSignalDbContract.InAppMessageTable.TABLE_NAME, strArr, "last_display < ?", strArr2, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.inAppMessages.internal.repositories.impl.InAppRepository.cleanCachedInAppMessages.2.1
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
                                Logging.debug$default("Attempted to clean 6 month old IAM data, but none exists!", null, 2, null);
                                return;
                            }
                            if (it.moveToFirst()) {
                                do {
                                    String string = it.getString("message_id");
                                    String string2 = it.getString(OneSignalDbContract.InAppMessageTable.COLUMN_CLICK_IDS);
                                    linkedHashSet3.add(string);
                                    linkedHashSet4.addAll(JSONUtils.INSTANCE.newStringSetFromJSONArray(new JSONArray(string2)));
                                } while (it.moveToNext());
                            }
                        }
                    }, 240, null);
                } catch (JSONException e) {
                    e = e;
                    e.printStackTrace();
                }
            } catch (JSONException e2) {
                e = e2;
                linkedHashSet = linkedHashSet4;
                linkedHashSet2 = linkedHashSet3;
            }
            InAppRepository.this._databaseProvider.getOs().delete(OneSignalDbContract.InAppMessageTable.TABLE_NAME, "last_display < ?", strArr2);
            InAppRepository.this._prefs.cleanInAppMessageIds(linkedHashSet2);
            InAppRepository.this._prefs.cleanInAppMessageClickedClickIds(linkedHashSet);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.internal.repositories.IInAppRepository
    public Object cleanCachedInAppMessages(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
