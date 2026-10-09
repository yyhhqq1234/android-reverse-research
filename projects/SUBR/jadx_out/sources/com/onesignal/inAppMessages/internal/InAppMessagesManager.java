package com.onesignal.inAppMessages.internal;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.IDManager;
import com.onesignal.common.JSONUtils;
import com.onesignal.common.consistency.IamFetchReadyCondition;
import com.onesignal.common.consistency.RywData;
import com.onesignal.common.consistency.models.IConsistencyManager;
import com.onesignal.common.events.EventProducer;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.IModelStore;
import com.onesignal.common.modeling.ISingletonModelStoreChangeHandler;
import com.onesignal.common.modeling.ModelChangedArgs;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.internal.application.IApplicationLifecycleHandler;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModel;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.language.ILanguageContext;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.IInAppMessageClickListener;
import com.onesignal.inAppMessages.IInAppMessageLifecycleListener;
import com.onesignal.inAppMessages.IInAppMessagesManager;
import com.onesignal.inAppMessages.InAppMessageActionUrlType;
import com.onesignal.inAppMessages.R;
import com.onesignal.inAppMessages.internal.backend.IInAppBackendService;
import com.onesignal.inAppMessages.internal.common.InAppHelper;
import com.onesignal.inAppMessages.internal.common.OneSignalChromeTab;
import com.onesignal.inAppMessages.internal.display.IInAppDisplayer;
import com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler;
import com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleService;
import com.onesignal.inAppMessages.internal.preferences.IInAppPreferencesController;
import com.onesignal.inAppMessages.internal.prompt.impl.InAppMessagePrompt;
import com.onesignal.inAppMessages.internal.repositories.IInAppRepository;
import com.onesignal.inAppMessages.internal.state.InAppStateService;
import com.onesignal.inAppMessages.internal.triggers.ITriggerController;
import com.onesignal.inAppMessages.internal.triggers.ITriggerHandler;
import com.onesignal.inAppMessages.internal.triggers.TriggerModel;
import com.onesignal.inAppMessages.internal.triggers.TriggerModelStore;
import com.onesignal.session.internal.influence.IInfluenceManager;
import com.onesignal.session.internal.outcomes.IOutcomeEventsController;
import com.onesignal.session.internal.session.ISessionLifecycleHandler;
import com.onesignal.session.internal.session.ISessionService;
import com.onesignal.user.IUserManager;
import com.onesignal.user.internal.subscriptions.ISubscriptionChangedHandler;
import com.onesignal.user.internal.subscriptions.ISubscriptionManager;
import com.onesignal.user.subscriptions.IPushSubscription;
import com.onesignal.user.subscriptions.ISubscription;
import com.unity3d.mediation.LevelPlayAdError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.md;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.y8;

/* JADX INFO: compiled from: InAppMessagesManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¬\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00020\u00050\u00042\u00020\u00062\u00020\u00072\u00020\b2\u00020\tB\u0095\u0001\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-¢\u0006\u0002\u0010.J\u0010\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020=H\u0016J\u0010\u0010O\u001a\u00020M2\u0006\u0010N\u001a\u00020;H\u0016J\u0018\u0010P\u001a\u00020M2\u0006\u0010Q\u001a\u0002012\u0006\u0010C\u001a\u000201H\u0016J\u001c\u0010R\u001a\u00020M2\u0012\u0010S\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u0002010TH\u0016J\u0011\u0010U\u001a\u00020MH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010VJ'\u0010W\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020[0ZH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\\J\b\u0010]\u001a\u00020MH\u0016J\u0011\u0010^\u001a\u00020MH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010VJ\u0019\u0010_\u001a\u00020M2\u0006\u0010`\u001a\u00020aH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010bJ\b\u0010c\u001a\u00020MH\u0002J\u0010\u0010d\u001a\u00020M2\u0006\u0010e\u001a\u00020fH\u0002J'\u0010g\u001a\u00020M2\u0006\u0010h\u001a\u0002012\f\u0010i\u001a\b\u0012\u0004\u0012\u00020j0ZH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010kJ!\u0010l\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\u0006\u0010e\u001a\u00020fH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010mJ!\u0010n\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\u0006\u0010e\u001a\u00020fH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010mJ!\u0010o\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\u0006\u0010p\u001a\u00020qH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010rJ\u0010\u0010s\u001a\u00020M2\u0006\u0010e\u001a\u00020fH\u0002J\u0010\u0010t\u001a\u00020D2\u0006\u0010X\u001a\u00020@H\u0002J\u0010\u0010u\u001a\u00020M2\u0006\u0010e\u001a\u00020fH\u0002J\u001e\u0010v\u001a\u00020M2\f\u0010w\u001a\b\u0012\u0004\u0012\u0002010x2\u0006\u0010y\u001a\u00020DH\u0002J#\u0010z\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\b\b\u0002\u0010{\u001a\u00020DH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010|J\u0010\u0010}\u001a\u00020M2\u0006\u0010~\u001a\u00020DH\u0016J\u0018\u0010\u007f\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\u0006\u0010e\u001a\u00020fH\u0016J\u0019\u0010\u0080\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\u0006\u0010e\u001a\u00020fH\u0016J\u0019\u0010\u0081\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@2\u0006\u0010p\u001a\u00020qH\u0016J\u0011\u0010\u0082\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0016J\u0011\u0010\u0084\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0016J\u0011\u0010\u0085\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0016J\u001b\u0010\u0086\u0001\u001a\u00020M2\u0007\u0010\u0087\u0001\u001a\u00020\u00052\u0007\u0010\u0088\u0001\u001a\u000201H\u0016J\u001c\u0010\u0089\u0001\u001a\u00020M2\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u0088\u0001\u001a\u000201H\u0016J\t\u0010\u008c\u0001\u001a\u00020MH\u0016J\u0012\u0010\u008d\u0001\u001a\u00020M2\u0007\u0010\u008e\u0001\u001a\u000207H\u0016J\t\u0010\u008f\u0001\u001a\u00020MH\u0016J\u0013\u0010\u0090\u0001\u001a\u00020M2\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0016J\u001d\u0010\u0093\u0001\u001a\u00020M2\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\u0013\u0010\u0094\u0001\u001a\u00020M2\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0016J\u0012\u0010\u0095\u0001\u001a\u00020M2\u0007\u0010\u0096\u0001\u001a\u000201H\u0016J\u0012\u0010\u0097\u0001\u001a\u00020M2\u0007\u0010\u0098\u0001\u001a\u000201H\u0016J\u0012\u0010\u0099\u0001\u001a\u00020M2\u0007\u0010\u0098\u0001\u001a\u000201H\u0016J\t\u0010\u009a\u0001\u001a\u00020MH\u0016J\u001b\u0010\u009b\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0082@ø\u0001\u0000¢\u0006\u0003\u0010\u009c\u0001J\u001b\u0010\u009d\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0082@ø\u0001\u0000¢\u0006\u0003\u0010\u009c\u0001J\u0011\u0010\u009e\u0001\u001a\u00020M2\u0006\u0010N\u001a\u00020=H\u0016J\u0011\u0010\u009f\u0001\u001a\u00020M2\u0006\u0010N\u001a\u00020;H\u0016J\u0011\u0010 \u0001\u001a\u00020M2\u0006\u0010Q\u001a\u000201H\u0016J\u0018\u0010¡\u0001\u001a\u00020M2\r\u0010¢\u0001\u001a\b\u0012\u0004\u0012\u0002010xH\u0016J\u0011\u0010£\u0001\u001a\u00020M2\u0006\u0010X\u001a\u00020@H\u0002J \u0010¤\u0001\u001a\u00020M2\u0007\u0010¥\u0001\u001a\u00020@2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020[0ZH\u0002J)\u0010¦\u0001\u001a\u00020M2\u0007\u0010¥\u0001\u001a\u00020@2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020[0ZH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\\J\t\u0010§\u0001\u001a\u00020MH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\b\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00105\u001a\b\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0004\n\u0002\u00108R\u0014\u00109\u001a\b\u0012\u0004\u0012\u00020;0:X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020=0:X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010B\u001a\b\u0012\u0004\u0012\u00020@0?X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010E\u001a\u00020D2\u0006\u0010C\u001a\u00020D8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u0014\u0010J\u001a\b\u0012\u0004\u0012\u00020@0?X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010K\u001a\b\u0012\u0004\u0012\u00020100X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006¨\u0001"}, d2 = {"Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;", "Lcom/onesignal/inAppMessages/IInAppMessagesManager;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionChangedHandler;", "Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;", "Lcom/onesignal/core/internal/config/ConfigModel;", "Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleEventHandler;", "Lcom/onesignal/inAppMessages/internal/triggers/ITriggerHandler;", "Lcom/onesignal/session/internal/session/ISessionLifecycleHandler;", "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_sessionService", "Lcom/onesignal/session/internal/session/ISessionService;", "_influenceManager", "Lcom/onesignal/session/internal/influence/IInfluenceManager;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_userManager", "Lcom/onesignal/user/IUserManager;", "_subscriptionManager", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;", "_outcomeEventsController", "Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;", "_state", "Lcom/onesignal/inAppMessages/internal/state/InAppStateService;", "_prefs", "Lcom/onesignal/inAppMessages/internal/preferences/IInAppPreferencesController;", "_repository", "Lcom/onesignal/inAppMessages/internal/repositories/IInAppRepository;", "_backend", "Lcom/onesignal/inAppMessages/internal/backend/IInAppBackendService;", "_triggerController", "Lcom/onesignal/inAppMessages/internal/triggers/ITriggerController;", "_triggerModelStore", "Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore;", "_displayer", "Lcom/onesignal/inAppMessages/internal/display/IInAppDisplayer;", "_lifecycle", "Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;", "_languageContext", "Lcom/onesignal/core/internal/language/ILanguageContext;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "_consistencyManager", "Lcom/onesignal/common/consistency/models/IConsistencyManager;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/IUserManager;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;Lcom/onesignal/inAppMessages/internal/state/InAppStateService;Lcom/onesignal/inAppMessages/internal/preferences/IInAppPreferencesController;Lcom/onesignal/inAppMessages/internal/repositories/IInAppRepository;Lcom/onesignal/inAppMessages/internal/backend/IInAppBackendService;Lcom/onesignal/inAppMessages/internal/triggers/ITriggerController;Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore;Lcom/onesignal/inAppMessages/internal/display/IInAppDisplayer;Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;Lcom/onesignal/core/internal/language/ILanguageContext;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/common/consistency/models/IConsistencyManager;)V", "clickedClickIds", "", "", "dismissedMessages", "fetchIAMMutex", "Lkotlinx/coroutines/sync/Mutex;", "impressionedMessages", "lastTimeFetchedIAMs", "", "Ljava/lang/Long;", "lifecycleCallback", "Lcom/onesignal/common/events/EventProducer;", "Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;", "messageClickCallback", "Lcom/onesignal/inAppMessages/IInAppMessageClickListener;", "messageDisplayQueue", "", "Lcom/onesignal/inAppMessages/internal/InAppMessage;", "messageDisplayQueueMutex", "messages", "value", "", y8.h.e0, "getPaused", "()Z", "setPaused", "(Z)V", "redisplayedInAppMessages", "viewedPageIds", "addClickListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addLifecycleListener", "addTrigger", y8.h.W, "addTriggers", "triggers", "", "attemptToShowInAppMessage", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "beginProcessingPrompts", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "prompts", "", "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearTriggers", "evaluateInAppMessages", "fetchMessages", "rywData", "Lcom/onesignal/common/consistency/RywData;", "(Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchMessagesWhenConditionIsMet", "fireClickAction", "action", "Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;", "fireOutcomesForClick", "messageId", "outcomes", "Lcom/onesignal/inAppMessages/internal/InAppMessageOutcome;", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firePublicClickHandler", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fireRESTCallForClick", "fireRESTCallForPageChange", "page", "Lcom/onesignal/inAppMessages/internal/InAppMessagePage;", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lcom/onesignal/inAppMessages/internal/InAppMessagePage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fireTagCallForClick", "hasMessageTriggerChanged", "logInAppMessagePreviewActions", "makeRedisplayMessagesAvailableWithTriggers", "newTriggersKeys", "", "isNewTriggerAdded", "messageWasDismissed", y8.h.t, "(Lcom/onesignal/inAppMessages/internal/InAppMessage;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onFocus", "firedOnSubscribe", "onMessageActionOccurredOnMessage", "onMessageActionOccurredOnPreview", "onMessagePageChanged", "onMessageWasDismissed", "onMessageWasDisplayed", "onMessageWillDismiss", "onMessageWillDisplay", "onModelReplaced", md.v, "tag", "onModelUpdated", "args", "Lcom/onesignal/common/modeling/ModelChangedArgs;", "onSessionActive", "onSessionEnded", IronSourceConstants.EVENTS_DURATION, "onSessionStarted", "onSubscriptionAdded", "subscription", "Lcom/onesignal/user/subscriptions/ISubscription;", "onSubscriptionChanged", "onSubscriptionRemoved", "onTriggerChanged", "newTriggerKey", "onTriggerCompleted", "triggerId", "onTriggerConditionChanged", "onUnfocused", "persistInAppMessage", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queueMessageForDisplay", "removeClickListener", "removeLifecycleListener", "removeTrigger", "removeTriggers", "keys", "setDataForRedisplay", "showAlertDialogMessage", "inAppMessage", "showMultiplePrompts", "start", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InAppMessagesManager implements IInAppMessagesManager, IStartableService, ISubscriptionChangedHandler, ISingletonModelStoreChangeHandler<ConfigModel>, IInAppLifecycleEventHandler, ITriggerHandler, ISessionLifecycleHandler, IApplicationLifecycleHandler {
    private final IApplicationService _applicationService;
    private final IInAppBackendService _backend;
    private final ConfigModelStore _configModelStore;
    private final IConsistencyManager _consistencyManager;
    private final IInAppDisplayer _displayer;
    private final IInfluenceManager _influenceManager;
    private final ILanguageContext _languageContext;
    private final IInAppLifecycleService _lifecycle;
    private final IOutcomeEventsController _outcomeEventsController;
    private final IInAppPreferencesController _prefs;
    private final IInAppRepository _repository;
    private final ISessionService _sessionService;
    private final InAppStateService _state;
    private final ISubscriptionManager _subscriptionManager;
    private final ITime _time;
    private final ITriggerController _triggerController;
    private final TriggerModelStore _triggerModelStore;
    private final IUserManager _userManager;
    private final Set<String> clickedClickIds;
    private final Set<String> dismissedMessages;
    private final Mutex fetchIAMMutex;
    private final Set<String> impressionedMessages;
    private Long lastTimeFetchedIAMs;
    private final EventProducer<IInAppMessageLifecycleListener> lifecycleCallback;
    private final EventProducer<IInAppMessageClickListener> messageClickCallback;
    private final List<InAppMessage> messageDisplayQueue;
    private final Mutex messageDisplayQueueMutex;
    private List<InAppMessage> messages;
    private final List<InAppMessage> redisplayedInAppMessages;
    private final Set<String> viewedPageIds;

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$attemptToShowInAppMessage$1, reason: invalid class name */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 1, 1, 1, 2, 2}, l = {386, 942, 416, 423, 427}, m = "attemptToShowInAppMessage", n = {"this", "this", "messageToDisplay", "$this$withLock_u24default$iv", "this", "messageToDisplay"}, s = {"L$0", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.attemptToShowInAppMessage(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$evaluateInAppMessages$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0}, l = {309}, m = "evaluateInAppMessages", n = {"this"}, s = {"L$0"})
    static final class C01911 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01911(Continuation<? super C01911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.evaluateInAppMessages(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$fetchMessages$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0, 0, 0, 0, 1}, l = {942, 282, 286}, m = "fetchMessages", n = {"this", "rywData", "appId", "subscriptionId", "$this$withLock_u24default$iv", "this"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0"})
    static final class C01921 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C01921(Continuation<? super C01921> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.fetchMessages(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$fireOutcomesForClick$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 1, 2}, l = {747, 749, 751}, m = "fireOutcomesForClick", n = {"this", "this", "this"}, s = {"L$0", "L$0", "L$0"})
    static final class C01941 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01941(Continuation<? super C01941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.fireOutcomesForClick(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$fireRESTCallForClick$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0, 0}, l = {898}, m = "fireRESTCallForClick", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "clickId"}, s = {"L$0", "L$1", "L$2"})
    static final class C01951 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C01951(Continuation<? super C01951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.fireRESTCallForClick(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$fireRESTCallForPageChange$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0}, l = {861}, m = "fireRESTCallForPageChange", n = {"this", "messagePrefixedPageId"}, s = {"L$0", "L$1"})
    static final class C01961 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01961(Continuation<? super C01961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.fireRESTCallForPageChange(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$messageWasDismissed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0}, l = {449, 475, 478}, m = "messageWasDismissed", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE}, s = {"L$0", "L$1"})
    static final class C01971 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01971(Continuation<? super C01971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.messageWasDismissed(null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$persistInAppMessage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0}, l = {IronSourceConstants.SDK_INIT_SUCCESS}, m = "persistInAppMessage", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE}, s = {"L$0", "L$1"})
    static final class C02091 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02091(Continuation<? super C02091> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.persistInAppMessage(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$queueMessageForDisplay$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0, 0}, l = {942, 381}, m = "queueMessageForDisplay", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2"})
    static final class C02101 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02101(Continuation<? super C02101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.queueMessageForDisplay(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$showMultiplePrompts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager", f = "InAppMessagesManager.kt", i = {0, 0, 0}, l = {782, 796}, m = "showMultiplePrompts", n = {"this", "inAppMessage", "prompts"}, s = {"L$0", "L$1", "L$2"})
    static final class C02111 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02111(Continuation<? super C02111> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagesManager.this.showMultiplePrompts(null, null, this);
        }
    }

    @Override // com.onesignal.core.internal.application.IApplicationLifecycleHandler
    public void onFocus(boolean firedOnSubscribe) {
    }

    @Override // com.onesignal.session.internal.session.ISessionLifecycleHandler
    public void onSessionActive() {
    }

    @Override // com.onesignal.session.internal.session.ISessionLifecycleHandler
    public void onSessionEnded(long duration) {
    }

    @Override // com.onesignal.user.internal.subscriptions.ISubscriptionChangedHandler
    public void onSubscriptionAdded(ISubscription subscription) {
        Intrinsics.checkNotNullParameter(subscription, "subscription");
    }

    @Override // com.onesignal.user.internal.subscriptions.ISubscriptionChangedHandler
    public void onSubscriptionRemoved(ISubscription subscription) {
        Intrinsics.checkNotNullParameter(subscription, "subscription");
    }

    @Override // com.onesignal.core.internal.application.IApplicationLifecycleHandler
    public void onUnfocused() {
    }

    public InAppMessagesManager(IApplicationService _applicationService, ISessionService _sessionService, IInfluenceManager _influenceManager, ConfigModelStore _configModelStore, IUserManager _userManager, ISubscriptionManager _subscriptionManager, IOutcomeEventsController _outcomeEventsController, InAppStateService _state, IInAppPreferencesController _prefs, IInAppRepository _repository, IInAppBackendService _backend, ITriggerController _triggerController, TriggerModelStore _triggerModelStore, IInAppDisplayer _displayer, IInAppLifecycleService _lifecycle, ILanguageContext _languageContext, ITime _time, IConsistencyManager _consistencyManager) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_sessionService, "_sessionService");
        Intrinsics.checkNotNullParameter(_influenceManager, "_influenceManager");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_userManager, "_userManager");
        Intrinsics.checkNotNullParameter(_subscriptionManager, "_subscriptionManager");
        Intrinsics.checkNotNullParameter(_outcomeEventsController, "_outcomeEventsController");
        Intrinsics.checkNotNullParameter(_state, "_state");
        Intrinsics.checkNotNullParameter(_prefs, "_prefs");
        Intrinsics.checkNotNullParameter(_repository, "_repository");
        Intrinsics.checkNotNullParameter(_backend, "_backend");
        Intrinsics.checkNotNullParameter(_triggerController, "_triggerController");
        Intrinsics.checkNotNullParameter(_triggerModelStore, "_triggerModelStore");
        Intrinsics.checkNotNullParameter(_displayer, "_displayer");
        Intrinsics.checkNotNullParameter(_lifecycle, "_lifecycle");
        Intrinsics.checkNotNullParameter(_languageContext, "_languageContext");
        Intrinsics.checkNotNullParameter(_time, "_time");
        Intrinsics.checkNotNullParameter(_consistencyManager, "_consistencyManager");
        this._applicationService = _applicationService;
        this._sessionService = _sessionService;
        this._influenceManager = _influenceManager;
        this._configModelStore = _configModelStore;
        this._userManager = _userManager;
        this._subscriptionManager = _subscriptionManager;
        this._outcomeEventsController = _outcomeEventsController;
        this._state = _state;
        this._prefs = _prefs;
        this._repository = _repository;
        this._backend = _backend;
        this._triggerController = _triggerController;
        this._triggerModelStore = _triggerModelStore;
        this._displayer = _displayer;
        this._lifecycle = _lifecycle;
        this._languageContext = _languageContext;
        this._time = _time;
        this._consistencyManager = _consistencyManager;
        this.lifecycleCallback = new EventProducer<>();
        this.messageClickCallback = new EventProducer<>();
        this.messages = new ArrayList();
        this.dismissedMessages = new LinkedHashSet();
        this.impressionedMessages = new LinkedHashSet();
        this.viewedPageIds = new LinkedHashSet();
        this.clickedClickIds = new LinkedHashSet();
        this.messageDisplayQueue = new ArrayList();
        this.messageDisplayQueueMutex = MutexKt.Mutex$default(false, 1, null);
        this.redisplayedInAppMessages = new ArrayList();
        this.fetchIAMMutex = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    public boolean getPaused() {
        return this._state.getPaused();
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    public void setPaused(boolean z) {
        Logging.debug$default("InAppMessagesManager.setPaused(value: " + z + ')', null, 2, null);
        this._state.setPaused(z);
        if (z && this._state.getInAppMessageIdShowing() != null) {
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new InAppMessagesManager$paused$1(this, null), 2, null);
        }
        if (z) {
            return;
        }
        ThreadUtilsKt.suspendifyOnThread$default(0, new InAppMessagesManager$paused$2(this, null), 1, null);
    }

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        Set<String> dismissedMessagesId = this._prefs.getDismissedMessagesId();
        if (dismissedMessagesId != null) {
            this.dismissedMessages.addAll(dismissedMessagesId);
        }
        Long lastTimeInAppDismissed = this._prefs.getLastTimeInAppDismissed();
        if (lastTimeInAppDismissed != null) {
            this._state.setLastTimeInAppDismissed(lastTimeInAppDismissed);
        }
        this._subscriptionManager.subscribe(this);
        this._configModelStore.subscribe((ISingletonModelStoreChangeHandler) this);
        this._lifecycle.subscribe(this);
        this._triggerController.subscribe(this);
        this._sessionService.subscribe(this);
        this._applicationService.addApplicationLifecycleHandler(this);
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02121(null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$start$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$start$1", f = "InAppMessagesManager.kt", i = {}, l = {155, 158, 168, 169, 171}, m = "invokeSuspend", n = {}, s = {})
    static final class C02121 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C02121(Continuation<? super C02121> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C02121(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02121) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x007e A[LOOP:0: B:23:0x0078->B:25:0x007e, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:28:0x00ae A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:31:0x00bc A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:34:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:36:0x00ce A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List list;
            Iterator it;
            RywData rywData;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else if (i == 2) {
                    list = (List) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    list.addAll((Collection) obj);
                    it = InAppMessagesManager.this.redisplayedInAppMessages.iterator();
                    while (it.hasNext()) {
                        ((InAppMessage) it.next()).setDisplayedInSession(false);
                    }
                    String onesignalId = InAppMessagesManager.this._userManager.getOnesignalId();
                    this.L$0 = null;
                    this.label = 3;
                    obj = InAppMessagesManager.this._consistencyManager.getRywDataFromAwaitableCondition(new IamFetchReadyCondition(onesignalId), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.label = 4;
                    obj = ((CompletableDeferred) obj).await(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    rywData = (RywData) obj;
                    if (rywData != null) {
                        this.label = 5;
                        if (InAppMessagesManager.this.fetchMessages(rywData, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else if (i == 3) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 4;
                    obj = ((CompletableDeferred) obj).await(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    rywData = (RywData) obj;
                    if (rywData != null) {
                        this.label = 5;
                        if (InAppMessagesManager.this.fetchMessages(rywData, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else if (i == 4) {
                    ResultKt.throwOnFailure(obj);
                    rywData = (RywData) obj;
                    if (rywData != null) {
                        this.label = 5;
                        if (InAppMessagesManager.this.fetchMessages(rywData, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (InAppMessagesManager.this._repository.cleanCachedInAppMessages(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            list = InAppMessagesManager.this.redisplayedInAppMessages;
            this.L$0 = list;
            this.label = 2;
            obj = InAppMessagesManager.this._repository.listInAppMessages(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            list.addAll((Collection) obj);
            it = InAppMessagesManager.this.redisplayedInAppMessages.iterator();
            while (it.hasNext()) {
                ((InAppMessage) it.next()).setDisplayedInSession(false);
            }
            String onesignalId2 = InAppMessagesManager.this._userManager.getOnesignalId();
            this.L$0 = null;
            this.label = 3;
            obj = InAppMessagesManager.this._consistencyManager.getRywDataFromAwaitableCondition(new IamFetchReadyCondition(onesignalId2), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.label = 4;
            obj = ((CompletableDeferred) obj).await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            rywData = (RywData) obj;
            if (rywData != null) {
                this.label = 5;
                if (InAppMessagesManager.this.fetchMessages(rywData, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addLifecycleListener */
    public void mo449addLifecycleListener(IInAppMessageLifecycleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Logging.debug$default("InAppMessagesManager.addLifecycleListener(listener: " + listener + ')', null, 2, null);
        this.lifecycleCallback.subscribe(listener);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeLifecycleListener */
    public void mo454removeLifecycleListener(IInAppMessageLifecycleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Logging.debug$default("InAppMessagesManager.removeLifecycleListener(listener: " + listener + ')', null, 2, null);
        this.lifecycleCallback.unsubscribe(listener);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addClickListener */
    public void mo448addClickListener(IInAppMessageClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Logging.debug$default("InAppMessagesManager.addClickListener(listener: " + listener + ')', null, 2, null);
        this.messageClickCallback.subscribe(listener);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeClickListener */
    public void mo453removeClickListener(IInAppMessageClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Logging.debug$default("InAppMessagesManager.removeClickListener(listener: " + listener + ')', null, 2, null);
        this.messageClickCallback.unsubscribe(listener);
    }

    @Override // com.onesignal.common.modeling.ISingletonModelStoreChangeHandler
    public void onModelUpdated(ModelChangedArgs args, String tag) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (Intrinsics.areEqual(args.getProperty(), "appId")) {
            fetchMessagesWhenConditionIsMet();
        }
    }

    @Override // com.onesignal.common.modeling.ISingletonModelStoreChangeHandler
    public void onModelReplaced(ConfigModel model, String tag) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(tag, "tag");
        fetchMessagesWhenConditionIsMet();
    }

    @Override // com.onesignal.user.internal.subscriptions.ISubscriptionChangedHandler
    public void onSubscriptionChanged(ISubscription subscription, ModelChangedArgs args) {
        Intrinsics.checkNotNullParameter(subscription, "subscription");
        Intrinsics.checkNotNullParameter(args, "args");
        if ((subscription instanceof IPushSubscription) && Intrinsics.areEqual(args.getPath(), "id")) {
            fetchMessagesWhenConditionIsMet();
        }
    }

    @Override // com.onesignal.session.internal.session.ISessionLifecycleHandler
    public void onSessionStarted() {
        Iterator<InAppMessage> it = this.redisplayedInAppMessages.iterator();
        while (it.hasNext()) {
            it.next().setDisplayedInSession(false);
        }
        fetchMessagesWhenConditionIsMet();
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$fetchMessagesWhenConditionIsMet$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$fetchMessagesWhenConditionIsMet$1", f = "InAppMessagesManager.kt", i = {}, l = {245, 246, 249}, m = "invokeSuspend", n = {}, s = {})
    static final class C01931 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C01931(Continuation<? super C01931> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C01931(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C01931) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x005d  */
        /* JADX WARN: Code duplicated, block: B:22:0x006a A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            RywData rywData;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    rywData = (RywData) obj;
                    if (rywData != null) {
                        this.label = 3;
                        if (InAppMessagesManager.this.fetchMessages(rywData, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            String onesignalId = InAppMessagesManager.this._userManager.getOnesignalId();
            this.label = 1;
            obj = InAppMessagesManager.this._consistencyManager.getRywDataFromAwaitableCondition(new IamFetchReadyCondition(onesignalId), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.label = 2;
            obj = ((CompletableDeferred) obj).await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            rywData = (RywData) obj;
            if (rywData != null) {
                this.label = 3;
                if (InAppMessagesManager.this.fetchMessages(rywData, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void fetchMessagesWhenConditionIsMet() {
        ThreadUtilsKt.suspendifyOnThread$default(0, new C01931(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:52:0x0126  */
    /* JADX WARN: Code duplicated, block: B:54:0x0136 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:0x013a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object fetchMessages(RywData rywData, Continuation<? super Unit> continuation) {
        C01921 c01921;
        RywData rywData2;
        String str;
        Mutex mutex;
        String str2;
        final InAppMessagesManager inAppMessagesManager;
        InAppMessagesManager inAppMessagesManager2;
        List list;
        if (continuation instanceof C01921) {
            c01921 = (C01921) continuation;
            if ((c01921.label & Integer.MIN_VALUE) != 0) {
                c01921.label -= Integer.MIN_VALUE;
            } else {
                c01921 = new C01921(continuation);
            }
        } else {
            c01921 = new C01921(continuation);
        }
        Object obj = c01921.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01921.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!this._applicationService.isInForeground()) {
                    return Unit.INSTANCE;
                }
                String appId = this._configModelStore.getModel().getAppId();
                String id = this._subscriptionManager.getSubscriptions().getPush().getId();
                if (!(id.length() == 0) && !IDManager.INSTANCE.isLocalId(id)) {
                    if (!(appId.length() == 0)) {
                        Mutex mutex2 = this.fetchIAMMutex;
                        c01921.L$0 = this;
                        rywData2 = rywData;
                        c01921.L$1 = rywData2;
                        c01921.L$2 = appId;
                        c01921.L$3 = id;
                        c01921.L$4 = mutex2;
                        c01921.label = 1;
                        if (mutex2.lock(null, c01921) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        str = id;
                        mutex = mutex2;
                        str2 = appId;
                        inAppMessagesManager = this;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i == 1) {
                mutex = (Mutex) c01921.L$4;
                str = (String) c01921.L$3;
                str2 = (String) c01921.L$2;
                rywData2 = (RywData) c01921.L$1;
                InAppMessagesManager inAppMessagesManager3 = (InAppMessagesManager) c01921.L$0;
                ResultKt.throwOnFailure(obj);
                inAppMessagesManager = inAppMessagesManager3;
            } else if (i == 2) {
                inAppMessagesManager2 = (InAppMessagesManager) c01921.L$0;
                ResultKt.throwOnFailure(obj);
                list = (List) obj;
                if (list != null) {
                    return Unit.INSTANCE;
                }
                inAppMessagesManager2.messages = TypeIntrinsics.asMutableList(list);
                c01921.L$0 = null;
                c01921.label = 3;
                if (inAppMessagesManager2.evaluateInAppMessages(c01921) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
            long currentTimeMillis = inAppMessagesManager._time.getCurrentTimeMillis();
            Long l = inAppMessagesManager.lastTimeFetchedIAMs;
            if (l != null) {
                Intrinsics.checkNotNull(l);
                if (currentTimeMillis - l.longValue() < inAppMessagesManager._configModelStore.getModel().getFetchIAMMinInterval()) {
                    Unit unit = Unit.INSTANCE;
                    mutex.unlock(null);
                    return unit;
                }
            }
            inAppMessagesManager.lastTimeFetchedIAMs = Boxing.boxLong(currentTimeMillis);
            Unit unit2 = Unit.INSTANCE;
            mutex.unlock(null);
            Function0<Long> function0 = new Function0<Long>() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager$fetchMessages$sessionDurationProvider$1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Long invoke() {
                    return Long.valueOf(this.this$0._time.getCurrentTimeMillis() - this.this$0._sessionService.getStartTime());
                }
            };
            IInAppBackendService iInAppBackendService = inAppMessagesManager._backend;
            c01921.L$0 = inAppMessagesManager;
            c01921.L$1 = null;
            c01921.L$2 = null;
            c01921.L$3 = null;
            c01921.L$4 = null;
            c01921.label = 2;
            Object objListInAppMessages = iInAppBackendService.listInAppMessages(str2, str, rywData2, function0, c01921);
            if (objListInAppMessages == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessagesManager2 = inAppMessagesManager;
            obj = objListInAppMessages;
            list = (List) obj;
            if (list != null) {
                return Unit.INSTANCE;
            }
            inAppMessagesManager2.messages = TypeIntrinsics.asMutableList(list);
            c01921.L$0 = null;
            c01921.label = 3;
            if (inAppMessagesManager2.evaluateInAppMessages(c01921) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object evaluateInAppMessages(Continuation<? super Unit> continuation) {
        C01911 c01911;
        InAppMessagesManager inAppMessagesManager;
        Iterator it;
        if (continuation instanceof C01911) {
            c01911 = (C01911) continuation;
            if ((c01911.label & Integer.MIN_VALUE) != 0) {
                c01911.label -= Integer.MIN_VALUE;
            } else {
                c01911 = new C01911(continuation);
            }
        } else {
            c01911 = new C01911(continuation);
        }
        Object obj = c01911.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01911.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Logging.debug$default("InAppMessagesManager.evaluateInAppMessages()", null, 2, null);
            ArrayList arrayList = new ArrayList();
            synchronized (this.messages) {
                for (InAppMessage inAppMessage : this.messages) {
                    if (this._triggerController.evaluateMessageTriggers(inAppMessage)) {
                        setDataForRedisplay(inAppMessage);
                        if (!this.dismissedMessages.contains(inAppMessage.getMessageId()) && !inAppMessage.isFinished()) {
                            arrayList.add(inAppMessage);
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
            inAppMessagesManager = this;
            it = arrayList.iterator();
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) c01911.L$1;
            inAppMessagesManager = (InAppMessagesManager) c01911.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            InAppMessage inAppMessage2 = (InAppMessage) it.next();
            c01911.L$0 = inAppMessagesManager;
            c01911.L$1 = it;
            c01911.label = 1;
            if (inAppMessagesManager.queueMessageForDisplay(inAppMessage2, c01911) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    private final void setDataForRedisplay(InAppMessage message) {
        boolean zContains = this.dismissedMessages.contains(message.getMessageId());
        int iIndexOf = this.redisplayedInAppMessages.indexOf(message);
        if (!zContains || iIndexOf == -1) {
            return;
        }
        InAppMessage inAppMessage = this.redisplayedInAppMessages.get(iIndexOf);
        message.getRedisplayStats().setDisplayStats(inAppMessage.getRedisplayStats());
        message.setDisplayedInSession(inAppMessage.getDisplayedInSession());
        boolean zHasMessageTriggerChanged = hasMessageTriggerChanged(message);
        Logging.debug$default("InAppMessagesManager.setDataForRedisplay: " + message + " triggerHasChanged: " + zHasMessageTriggerChanged, null, 2, null);
        if (zHasMessageTriggerChanged && message.getRedisplayStats().isDelayTimeSatisfied() && message.getRedisplayStats().shouldDisplayAgain()) {
            Logging.debug$default("InAppMessagesManager.setDataForRedisplay message available for redisplay: " + message.getMessageId(), null, 2, null);
            this.dismissedMessages.remove(message.getMessageId());
            this.impressionedMessages.remove(message.getMessageId());
            this.viewedPageIds.clear();
            this._prefs.setViewPageImpressionedIds(this.viewedPageIds);
            message.clearClickIds();
        }
    }

    private final boolean hasMessageTriggerChanged(InAppMessage message) {
        if (this._triggerController.messageHasOnlyDynamicTriggers(message)) {
            return !message.getDisplayedInSession();
        }
        return message.getTriggerChanged() || (!message.getDisplayedInSession() && message.getTriggers().isEmpty());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public final Object queueMessageForDisplay(InAppMessage inAppMessage, Continuation<? super Unit> continuation) {
        C02101 c02101;
        Mutex mutex;
        InAppMessagesManager inAppMessagesManager;
        if (continuation instanceof C02101) {
            c02101 = (C02101) continuation;
            if ((c02101.label & Integer.MIN_VALUE) != 0) {
                c02101.label -= Integer.MIN_VALUE;
            } else {
                c02101 = new C02101(continuation);
            }
        } else {
            c02101 = new C02101(continuation);
        }
        Object obj = c02101.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02101.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = this.messageDisplayQueueMutex;
                c02101.L$0 = this;
                c02101.L$1 = inAppMessage;
                c02101.L$2 = mutex;
                c02101.label = 1;
                if (mutex.lock(null, c02101) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                inAppMessagesManager = this;
            } else {
                if (i == 1) {
                    Mutex mutex2 = (Mutex) c02101.L$2;
                    InAppMessage inAppMessage2 = (InAppMessage) c02101.L$1;
                    inAppMessagesManager = (InAppMessagesManager) c02101.L$0;
                    ResultKt.throwOnFailure(obj);
                    mutex = mutex2;
                    inAppMessage = inAppMessage2;
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            if (!inAppMessagesManager.messageDisplayQueue.contains(inAppMessage) && !Intrinsics.areEqual(inAppMessagesManager._state.getInAppMessageIdShowing(), inAppMessage.getMessageId())) {
                inAppMessagesManager.messageDisplayQueue.add(inAppMessage);
                Logging.debug$default("InAppMessagesManager.queueMessageForDisplay: In app message with id: " + inAppMessage.getMessageId() + ", added to the queue", null, 2, null);
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            c02101.L$0 = null;
            c02101.L$1 = null;
            c02101.L$2 = null;
            c02101.label = 2;
            if (inAppMessagesManager.attemptToShowInAppMessage(c02101) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x00be A[Catch: all -> 0x0177, TryCatch #0 {all -> 0x0177, blocks: (B:33:0x00a7, B:35:0x00be, B:43:0x00fd, B:36:0x00c4, B:38:0x00cc, B:39:0x00d2, B:41:0x00da, B:42:0x00e0), top: B:69:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4 A[Catch: all -> 0x0177, TryCatch #0 {all -> 0x0177, blocks: (B:33:0x00a7, B:35:0x00be, B:43:0x00fd, B:36:0x00c4, B:38:0x00cc, B:39:0x00d2, B:41:0x00da, B:42:0x00e0), top: B:69:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00cc A[Catch: all -> 0x0177, TryCatch #0 {all -> 0x0177, blocks: (B:33:0x00a7, B:35:0x00be, B:43:0x00fd, B:36:0x00c4, B:38:0x00cc, B:39:0x00d2, B:41:0x00da, B:42:0x00e0), top: B:69:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d2 A[Catch: all -> 0x0177, TryCatch #0 {all -> 0x0177, blocks: (B:33:0x00a7, B:35:0x00be, B:43:0x00fd, B:36:0x00c4, B:38:0x00cc, B:39:0x00d2, B:41:0x00da, B:42:0x00e0), top: B:69:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00da A[Catch: all -> 0x0177, TryCatch #0 {all -> 0x0177, blocks: (B:33:0x00a7, B:35:0x00be, B:43:0x00fd, B:36:0x00c4, B:38:0x00cc, B:39:0x00d2, B:41:0x00da, B:42:0x00e0), top: B:69:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00e0 A[Catch: all -> 0x0177, TryCatch #0 {all -> 0x0177, blocks: (B:33:0x00a7, B:35:0x00be, B:43:0x00fd, B:36:0x00c4, B:38:0x00cc, B:39:0x00d2, B:41:0x00da, B:42:0x00e0), top: B:69:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0106  */
    /* JADX WARN: Code duplicated, block: B:48:0x011d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x011e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0125  */
    /* JADX WARN: Code duplicated, block: B:54:0x013d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:0x0141  */
    /* JADX WARN: Code duplicated, block: B:59:0x014b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0170 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
    public final Object attemptToShowInAppMessage(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        InAppMessagesManager inAppMessagesManager;
        Ref.ObjectRef objectRef;
        Mutex mutex;
        Object objDisplayMessage;
        Ref.ObjectRef objectRef2;
        Boolean bool;
        T t;
        T t2;
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
        Object objWaitUntilSystemConditionsAvailable = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWaitUntilSystemConditionsAvailable);
            IApplicationService iApplicationService = this._applicationService;
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            objWaitUntilSystemConditionsAvailable = iApplicationService.waitUntilSystemConditionsAvailable(anonymousClass1);
            if (objWaitUntilSystemConditionsAvailable == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessagesManager = this;
        } else {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            ResultKt.throwOnFailure(objWaitUntilSystemConditionsAvailable);
                            return Unit.INSTANCE;
                        }
                        if (i == 5) {
                            ResultKt.throwOnFailure(objWaitUntilSystemConditionsAvailable);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    objectRef2 = (Ref.ObjectRef) anonymousClass1.L$1;
                    inAppMessagesManager = (InAppMessagesManager) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(objWaitUntilSystemConditionsAvailable);
                    bool = (Boolean) objWaitUntilSystemConditionsAvailable;
                    if (bool == null) {
                        inAppMessagesManager._state.setInAppMessageIdShowing(null);
                        t2 = objectRef2.element;
                        Intrinsics.checkNotNull(t2);
                        anonymousClass1.L$0 = null;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.label = 4;
                        if (inAppMessagesManager.queueMessageForDisplay((InAppMessage) t2, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    if (Intrinsics.areEqual(bool, Boxing.boxBoolean(false))) {
                        inAppMessagesManager._state.setInAppMessageIdShowing(null);
                        TypeIntrinsics.asMutableCollection(inAppMessagesManager.messages).remove(objectRef2.element);
                        t = objectRef2.element;
                        Intrinsics.checkNotNull(t);
                        anonymousClass1.L$0 = null;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.label = 5;
                        if (inAppMessagesManager.messageWasDismissed((InAppMessage) t, true, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    return Unit.INSTANCE;
                }
                Mutex mutex2 = (Mutex) anonymousClass1.L$2;
                Ref.ObjectRef objectRef3 = (Ref.ObjectRef) anonymousClass1.L$1;
                InAppMessagesManager inAppMessagesManager2 = (InAppMessagesManager) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objWaitUntilSystemConditionsAvailable);
                objectRef = objectRef3;
                mutex = mutex2;
                inAppMessagesManager = inAppMessagesManager2;
                try {
                    Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: " + inAppMessagesManager.messageDisplayQueue, null, 2, null);
                    if (inAppMessagesManager.getPaused()) {
                        Logging.warn$default("InAppMessagesManager.attemptToShowInAppMessage: In app messaging is currently paused, in app messages will not be shown!", null, 2, null);
                    } else if (inAppMessagesManager.messageDisplayQueue.isEmpty()) {
                        Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: There are no IAMs left in the queue!", null, 2, null);
                    } else if (inAppMessagesManager._state.getInAppMessageIdShowing() != null) {
                        Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: There is an IAM currently showing!", null, 2, null);
                    } else {
                        Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: No IAM showing currently, showing first item in the queue!", null, 2, null);
                        objectRef.element = inAppMessagesManager.messageDisplayQueue.remove(0);
                        InAppStateService inAppStateService = inAppMessagesManager._state;
                        T t3 = objectRef.element;
                        Intrinsics.checkNotNull(t3);
                        inAppStateService.setInAppMessageIdShowing(((InAppMessage) t3).getMessageId());
                    }
                    Unit unit = Unit.INSTANCE;
                    mutex.unlock(null);
                    if (objectRef.element != 0) {
                        IInAppDisplayer iInAppDisplayer = inAppMessagesManager._displayer;
                        T t4 = objectRef.element;
                        Intrinsics.checkNotNull(t4);
                        anonymousClass1.L$0 = inAppMessagesManager;
                        anonymousClass1.L$1 = objectRef;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        objDisplayMessage = iInAppDisplayer.displayMessage((InAppMessage) t4, anonymousClass1);
                        if (objDisplayMessage == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef2 = objectRef;
                        objWaitUntilSystemConditionsAvailable = objDisplayMessage;
                        bool = (Boolean) objWaitUntilSystemConditionsAvailable;
                        if (bool == null) {
                            inAppMessagesManager._state.setInAppMessageIdShowing(null);
                            t2 = objectRef2.element;
                            Intrinsics.checkNotNull(t2);
                            anonymousClass1.L$0 = null;
                            anonymousClass1.L$1 = null;
                            anonymousClass1.label = 4;
                            if (inAppMessagesManager.queueMessageForDisplay((InAppMessage) t2, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                        if (Intrinsics.areEqual(bool, Boxing.boxBoolean(false))) {
                            inAppMessagesManager._state.setInAppMessageIdShowing(null);
                            TypeIntrinsics.asMutableCollection(inAppMessagesManager.messages).remove(objectRef2.element);
                            t = objectRef2.element;
                            Intrinsics.checkNotNull(t);
                            anonymousClass1.L$0 = null;
                            anonymousClass1.L$1 = null;
                            anonymousClass1.label = 5;
                            if (inAppMessagesManager.messageWasDismissed((InAppMessage) t, true, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    mutex.unlock(null);
                    throw th;
                }
            }
            inAppMessagesManager = (InAppMessagesManager) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objWaitUntilSystemConditionsAvailable);
        }
        if (!((Boolean) objWaitUntilSystemConditionsAvailable).booleanValue()) {
            Logging.warn$default("InAppMessagesManager.attemptToShowInAppMessage: In app message not showing due to system condition not correct", null, 2, null);
            return Unit.INSTANCE;
        }
        objectRef = new Ref.ObjectRef();
        mutex = inAppMessagesManager.messageDisplayQueueMutex;
        anonymousClass1.L$0 = inAppMessagesManager;
        anonymousClass1.L$1 = objectRef;
        anonymousClass1.L$2 = mutex;
        anonymousClass1.label = 2;
        if (mutex.lock(null, anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: " + inAppMessagesManager.messageDisplayQueue, null, 2, null);
        if (inAppMessagesManager.getPaused()) {
            Logging.warn$default("InAppMessagesManager.attemptToShowInAppMessage: In app messaging is currently paused, in app messages will not be shown!", null, 2, null);
        } else if (inAppMessagesManager.messageDisplayQueue.isEmpty()) {
            Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: There are no IAMs left in the queue!", null, 2, null);
        } else if (inAppMessagesManager._state.getInAppMessageIdShowing() != null) {
            Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: There is an IAM currently showing!", null, 2, null);
        } else {
            Logging.debug$default("InAppMessagesManager.attemptToShowInAppMessage: No IAM showing currently, showing first item in the queue!", null, 2, null);
            objectRef.element = inAppMessagesManager.messageDisplayQueue.remove(0);
            InAppStateService inAppStateService2 = inAppMessagesManager._state;
            T t5 = objectRef.element;
            Intrinsics.checkNotNull(t5);
            inAppStateService2.setInAppMessageIdShowing(((InAppMessage) t5).getMessageId());
        }
        Unit unit2 = Unit.INSTANCE;
        mutex.unlock(null);
        if (objectRef.element != 0) {
            IInAppDisplayer iInAppDisplayer2 = inAppMessagesManager._displayer;
            T t6 = objectRef.element;
            Intrinsics.checkNotNull(t6);
            anonymousClass1.L$0 = inAppMessagesManager;
            anonymousClass1.L$1 = objectRef;
            anonymousClass1.L$2 = null;
            anonymousClass1.label = 3;
            objDisplayMessage = iInAppDisplayer2.displayMessage((InAppMessage) t6, anonymousClass1);
            if (objDisplayMessage == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef2 = objectRef;
            objWaitUntilSystemConditionsAvailable = objDisplayMessage;
            bool = (Boolean) objWaitUntilSystemConditionsAvailable;
            if (bool == null) {
                inAppMessagesManager._state.setInAppMessageIdShowing(null);
                t2 = objectRef2.element;
                Intrinsics.checkNotNull(t2);
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 4;
                if (inAppMessagesManager.queueMessageForDisplay((InAppMessage) t2, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            if (Intrinsics.areEqual(bool, Boxing.boxBoolean(false))) {
                inAppMessagesManager._state.setInAppMessageIdShowing(null);
                TypeIntrinsics.asMutableCollection(inAppMessagesManager.messages).remove(objectRef2.element);
                t = objectRef2.element;
                Intrinsics.checkNotNull(t);
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 5;
                if (inAppMessagesManager.messageWasDismissed((InAppMessage) t, true, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object messageWasDismissed(final InAppMessage inAppMessage, boolean z, Continuation<? super Unit> continuation) {
        C01971 c01971;
        InAppMessagesManager inAppMessagesManager;
        if (continuation instanceof C01971) {
            c01971 = (C01971) continuation;
            if ((c01971.label & Integer.MIN_VALUE) != 0) {
                c01971.label -= Integer.MIN_VALUE;
            } else {
                c01971 = new C01971(continuation);
            }
        } else {
            c01971 = new C01971(continuation);
        }
        Object obj = c01971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01971.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (inAppMessage.getIsPreview()) {
                inAppMessagesManager = this;
            } else {
                this.dismissedMessages.add(inAppMessage.getMessageId());
                if (!z) {
                    this._prefs.setDismissedMessagesId(this.dismissedMessages);
                    this._state.setLastTimeInAppDismissed(Boxing.boxLong(this._time.getCurrentTimeMillis()));
                    c01971.L$0 = this;
                    c01971.L$1 = inAppMessage;
                    c01971.label = 1;
                    if (persistInAppMessage(inAppMessage, c01971) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                inAppMessagesManager = this;
            }
            inAppMessagesManager._influenceManager.onInAppMessageDismissed();
            if (inAppMessagesManager._state.getCurrentPrompt() != null) {
                Logging.debug$default("InAppMessagesManager.messageWasDismissed: Stop evaluateMessageDisplayQueue because prompt is currently displayed", null, 2, null);
                return Unit.INSTANCE;
            }
            if (inAppMessagesManager.lifecycleCallback.getHasSubscribers()) {
                inAppMessagesManager.lifecycleCallback.fireOnMain(new Function1<IInAppMessageLifecycleListener, Unit>() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager.messageWasDismissed.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(IInAppMessageLifecycleListener iInAppMessageLifecycleListener) {
                        invoke2(iInAppMessageLifecycleListener);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(IInAppMessageLifecycleListener it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.onDidDismiss(new InAppMessageLifecycleEvent(inAppMessage));
                    }
                });
            }
            inAppMessagesManager._state.setInAppMessageIdShowing(null);
            if (!inAppMessagesManager.messageDisplayQueue.isEmpty()) {
                Logging.debug$default("InAppMessagesManager.messageWasDismissed: In app message on queue available, attempting to show", null, 2, null);
                c01971.L$0 = null;
                c01971.L$1 = null;
                c01971.label = 2;
                if (inAppMessagesManager.attemptToShowInAppMessage(c01971) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            Logging.debug$default("InAppMessagesManager.messageWasDismissed: In app message dismissed evaluating messages", null, 2, null);
            c01971.L$0 = null;
            c01971.L$1 = null;
            c01971.label = 3;
            if (inAppMessagesManager.evaluateInAppMessages(c01971) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            if (i == 3) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        inAppMessage = (InAppMessage) c01971.L$1;
        inAppMessagesManager = (InAppMessagesManager) c01971.L$0;
        ResultKt.throwOnFailure(obj);
        Logging.debug$default("InAppMessagesManager.messageWasDismissed: dismissedMessages: " + inAppMessagesManager.dismissedMessages, null, 2, null);
        inAppMessagesManager._influenceManager.onInAppMessageDismissed();
        if (inAppMessagesManager._state.getCurrentPrompt() != null) {
            Logging.debug$default("InAppMessagesManager.messageWasDismissed: Stop evaluateMessageDisplayQueue because prompt is currently displayed", null, 2, null);
            return Unit.INSTANCE;
        }
        if (inAppMessagesManager.lifecycleCallback.getHasSubscribers()) {
            inAppMessagesManager.lifecycleCallback.fireOnMain(new Function1<IInAppMessageLifecycleListener, Unit>() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager.messageWasDismissed.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IInAppMessageLifecycleListener iInAppMessageLifecycleListener) {
                    invoke2(iInAppMessageLifecycleListener);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(IInAppMessageLifecycleListener it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.onDidDismiss(new InAppMessageLifecycleEvent(inAppMessage));
                }
            });
        }
        inAppMessagesManager._state.setInAppMessageIdShowing(null);
        if (!inAppMessagesManager.messageDisplayQueue.isEmpty()) {
            Logging.debug$default("InAppMessagesManager.messageWasDismissed: In app message on queue available, attempting to show", null, 2, null);
            c01971.L$0 = null;
            c01971.L$1 = null;
            c01971.label = 2;
            if (inAppMessagesManager.attemptToShowInAppMessage(c01971) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        Logging.debug$default("InAppMessagesManager.messageWasDismissed: In app message dismissed evaluating messages", null, 2, null);
        c01971.L$0 = null;
        c01971.L$1 = null;
        c01971.label = 3;
        if (inAppMessagesManager.evaluateInAppMessages(c01971) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    static /* synthetic */ Object messageWasDismissed$default(InAppMessagesManager inAppMessagesManager, InAppMessage inAppMessage, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return inAppMessagesManager.messageWasDismissed(inAppMessage, z, continuation);
    }

    private final void makeRedisplayMessagesAvailableWithTriggers(Collection<String> newTriggersKeys, boolean isNewTriggerAdded) {
        synchronized (this.messages) {
            for (InAppMessage inAppMessage : this.messages) {
                boolean zContains = this.redisplayedInAppMessages.contains(inAppMessage);
                boolean zIsTriggerOnMessage = this._triggerController.isTriggerOnMessage(inAppMessage, newTriggersKeys);
                boolean zMessageHasOnlyDynamicTriggers = this._triggerController.messageHasOnlyDynamicTriggers(inAppMessage);
                if (!inAppMessage.getTriggerChanged() && zContains && (zIsTriggerOnMessage || (isNewTriggerAdded && zMessageHasOnlyDynamicTriggers))) {
                    Logging.debug$default("InAppMessagesManager.makeRedisplayMessagesAvailableWithTriggers: Trigger changed for message: " + inAppMessage, null, 2, null);
                    inAppMessage.setTriggerChanged(true);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object persistInAppMessage(InAppMessage inAppMessage, Continuation<? super Unit> continuation) {
        C02091 c02091;
        InAppMessagesManager inAppMessagesManager;
        if (continuation instanceof C02091) {
            c02091 = (C02091) continuation;
            if ((c02091.label & Integer.MIN_VALUE) != 0) {
                c02091.label -= Integer.MIN_VALUE;
            } else {
                c02091 = new C02091(continuation);
            }
        } else {
            c02091 = new C02091(continuation);
        }
        Object obj = c02091.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02091.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            inAppMessage.getRedisplayStats().setLastDisplayTime(this._time.getCurrentTimeMillis() / ((long) 1000));
            inAppMessage.getRedisplayStats().incrementDisplayQuantity();
            inAppMessage.setTriggerChanged(false);
            inAppMessage.setDisplayedInSession(true);
            IInAppRepository iInAppRepository = this._repository;
            c02091.L$0 = this;
            c02091.L$1 = inAppMessage;
            c02091.label = 1;
            if (iInAppRepository.saveInAppMessage(inAppMessage, c02091) == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessagesManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppMessage = (InAppMessage) c02091.L$1;
            inAppMessagesManager = (InAppMessagesManager) c02091.L$0;
            ResultKt.throwOnFailure(obj);
        }
        inAppMessagesManager._prefs.setLastTimeInAppDismissed(inAppMessagesManager._state.getLastTimeInAppDismissed());
        int iIndexOf = inAppMessagesManager.redisplayedInAppMessages.indexOf(inAppMessage);
        if (iIndexOf != -1) {
            inAppMessagesManager.redisplayedInAppMessages.set(iIndexOf, inAppMessage);
        } else {
            inAppMessagesManager.redisplayedInAppMessages.add(inAppMessage);
        }
        Logging.debug$default("InAppMessagesManager.persistInAppMessage: " + inAppMessage + " with msg array data: " + inAppMessagesManager.redisplayedInAppMessages, null, 2, null);
        return Unit.INSTANCE;
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addTriggers */
    public void mo451addTriggers(Map<String, String> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        Logging.debug$default("InAppMessagesManager.addTriggers(triggers: " + triggers + ')', null, 2, null);
        for (Map.Entry<String, String> entry : triggers.entrySet()) {
            mo450addTrigger(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: addTrigger */
    public void mo450addTrigger(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Logging.debug$default("InAppMessagesManager.addTrigger(key: " + key + ", value: " + value + ')', null, 2, null);
        TriggerModel triggerModel = (TriggerModel) this._triggerModelStore.get(key);
        if (triggerModel != null) {
            triggerModel.setValue(value);
            return;
        }
        TriggerModel triggerModel2 = new TriggerModel();
        triggerModel2.setId(key);
        triggerModel2.setKey(key);
        triggerModel2.setValue(value);
        IModelStore.DefaultImpls.add$default(this._triggerModelStore, triggerModel2, null, 2, null);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeTriggers */
    public void mo456removeTriggers(Collection<String> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Logging.debug$default("InAppMessagesManager.removeTriggers(keys: " + keys + ')', null, 2, null);
        Iterator<T> it = keys.iterator();
        while (it.hasNext()) {
            mo455removeTrigger((String) it.next());
        }
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: removeTrigger */
    public void mo455removeTrigger(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Logging.debug$default("InAppMessagesManager.removeTrigger(key: " + key + ')', null, 2, null);
        IModelStore.DefaultImpls.remove$default(this._triggerModelStore, key, null, 2, null);
    }

    @Override // com.onesignal.inAppMessages.IInAppMessagesManager
    /* JADX INFO: renamed from: clearTriggers */
    public void mo452clearTriggers() {
        Logging.debug$default("InAppMessagesManager.clearTriggers()", null, 2, null);
        IModelStore.DefaultImpls.clear$default(this._triggerModelStore, null, 1, null);
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessageWillDisplay(final InAppMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (!this.lifecycleCallback.getHasSubscribers()) {
            Logging.verbose$default("InAppMessagesManager.onMessageWillDisplay: inAppMessageLifecycleHandler is null", null, 2, null);
        } else {
            this.lifecycleCallback.fireOnMain(new Function1<IInAppMessageLifecycleListener, Unit>() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager.onMessageWillDisplay.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IInAppMessageLifecycleListener iInAppMessageLifecycleListener) {
                    invoke2(iInAppMessageLifecycleListener);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(IInAppMessageLifecycleListener it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.onWillDisplay(new InAppMessageLifecycleEvent(message));
                }
            });
        }
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessageWasDisplayed(final InAppMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (this.lifecycleCallback.getHasSubscribers()) {
            this.lifecycleCallback.fireOnMain(new Function1<IInAppMessageLifecycleListener, Unit>() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager.onMessageWasDisplayed.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IInAppMessageLifecycleListener iInAppMessageLifecycleListener) {
                    invoke2(iInAppMessageLifecycleListener);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(IInAppMessageLifecycleListener it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.onDidDisplay(new InAppMessageLifecycleEvent(message));
                }
            });
        } else {
            Logging.verbose$default("InAppMessagesManager.onMessageWasDisplayed: inAppMessageLifecycleHandler is null", null, 2, null);
        }
        if (message.getIsPreview() || this.impressionedMessages.contains(message.getMessageId())) {
            return;
        }
        this.impressionedMessages.add(message.getMessageId());
        String strVariantIdForMessage = InAppHelper.INSTANCE.variantIdForMessage(message, this._languageContext);
        if (strVariantIdForMessage == null) {
            return;
        }
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02042(strVariantIdForMessage, message, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageWasDisplayed$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageWasDisplayed$2", f = "InAppMessagesManager.kt", i = {}, l = {IronSourceError.ERROR_BN_LOAD_PLACEMENT_CAPPED}, m = "invokeSuspend", n = {}, s = {})
    static final class C02042 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessage $message;
        final /* synthetic */ String $variantId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02042(String str, InAppMessage inAppMessage, Continuation<? super C02042> continuation) {
            super(1, continuation);
            this.$variantId = str;
            this.$message = inAppMessage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C02042(this.$variantId, this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02042) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (InAppMessagesManager.this._backend.sendIAMImpression(InAppMessagesManager.this._configModelStore.getModel().getAppId(), InAppMessagesManager.this._subscriptionManager.getSubscriptions().getPush().getId(), this.$variantId, this.$message.getMessageId(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                InAppMessagesManager.this._prefs.setImpressionesMessagesId(InAppMessagesManager.this.impressionedMessages);
            } catch (BackendException unused) {
                InAppMessagesManager.this.impressionedMessages.remove(this.$message.getMessageId());
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageActionOccurredOnPreview$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageActionOccurredOnPreview$1", f = "InAppMessagesManager.kt", i = {}, l = {LevelPlayAdError.ERROR_CODE_INVALID_AD_UNIT_ID, LevelPlayAdError.ERROR_CODE_IS_LOAD_FAILED_ALREADY_CALLED}, m = "invokeSuspend", n = {}, s = {})
    static final class C02001 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessageClickResult $action;
        final /* synthetic */ InAppMessage $message;
        int label;
        final /* synthetic */ InAppMessagesManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02001(InAppMessageClickResult inAppMessageClickResult, InAppMessage inAppMessage, InAppMessagesManager inAppMessagesManager, Continuation<? super C02001> continuation) {
            super(1, continuation);
            this.$action = inAppMessageClickResult;
            this.$message = inAppMessage;
            this.this$0 = inAppMessagesManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C02001(this.$action, this.$message, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02001) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.fireClickAction(this.$action);
                this.this$0.logInAppMessagePreviewActions(this.$action);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            this.$action.setFirstClick(this.$message.takeActionAsUnique());
            this.label = 1;
            if (this.this$0.firePublicClickHandler(this.$message, this.$action, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.label = 2;
            if (this.this$0.beginProcessingPrompts(this.$message, this.$action.getPrompts(), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.this$0.fireClickAction(this.$action);
            this.this$0.logInAppMessagePreviewActions(this.$action);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessageActionOccurredOnPreview(InAppMessage message, InAppMessageClickResult action) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(action, "action");
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02001(action, message, this, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageActionOccurredOnMessage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageActionOccurredOnMessage$1", f = "InAppMessagesManager.kt", i = {}, l = {639, 640, 642, 644}, m = "invokeSuspend", n = {}, s = {})
    static final class C01991 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessageClickResult $action;
        final /* synthetic */ InAppMessage $message;
        int label;
        final /* synthetic */ InAppMessagesManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01991(InAppMessageClickResult inAppMessageClickResult, InAppMessage inAppMessage, InAppMessagesManager inAppMessagesManager, Continuation<? super C01991> continuation) {
            super(1, continuation);
            this.$action = inAppMessageClickResult;
            this.$message = inAppMessage;
            this.this$0 = inAppMessagesManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C01991(this.$action, this.$message, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C01991) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x007b A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:25:0x009c A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.$action.setFirstClick(this.$message.takeActionAsUnique());
                this.label = 1;
                if (this.this$0.firePublicClickHandler(this.$message, this.$action, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.fireClickAction(this.$action);
                    this.label = 3;
                    if (this.this$0.fireRESTCallForClick(this.$message, this.$action, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.this$0.fireTagCallForClick(this.$action);
                    this.label = 4;
                    if (this.this$0.fireOutcomesForClick(this.$message.getMessageId(), this.$action.getOutcomes(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i == 3) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.fireTagCallForClick(this.$action);
                    this.label = 4;
                    if (this.this$0.fireOutcomesForClick(this.$message.getMessageId(), this.$action.getOutcomes(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            this.label = 2;
            if (this.this$0.beginProcessingPrompts(this.$message, this.$action.getPrompts(), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.this$0.fireClickAction(this.$action);
            this.label = 3;
            if (this.this$0.fireRESTCallForClick(this.$message, this.$action, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.this$0.fireTagCallForClick(this.$action);
            this.label = 4;
            if (this.this$0.fireOutcomesForClick(this.$message.getMessageId(), this.$action.getOutcomes(), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessageActionOccurredOnMessage(InAppMessage message, InAppMessageClickResult action) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(action, "action");
        ThreadUtilsKt.suspendifyOnThread$default(0, new C01991(action, message, this, null), 1, null);
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessagePageChanged(InAppMessage message, InAppMessagePage page) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(page, "page");
        if (message.getIsPreview()) {
            return;
        }
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02011(message, page, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessagePageChanged$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessagePageChanged$1", f = "InAppMessagesManager.kt", i = {}, l = {657}, m = "invokeSuspend", n = {}, s = {})
    static final class C02011 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessage $message;
        final /* synthetic */ InAppMessagePage $page;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02011(InAppMessage inAppMessage, InAppMessagePage inAppMessagePage, Continuation<? super C02011> continuation) {
            super(1, continuation);
            this.$message = inAppMessage;
            this.$page = inAppMessagePage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C02011(this.$message, this.$page, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02011) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (InAppMessagesManager.this.fireRESTCallForPageChange(this.$message, this.$page, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessageWillDismiss(final InAppMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (!this.lifecycleCallback.getHasSubscribers()) {
            Logging.verbose$default("InAppMessagesManager.onMessageWillDismiss: inAppMessageLifecycleHandler is null", null, 2, null);
        } else {
            this.lifecycleCallback.fireOnMain(new Function1<IInAppMessageLifecycleListener, Unit>() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager.onMessageWillDismiss.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IInAppMessageLifecycleListener iInAppMessageLifecycleListener) {
                    invoke2(iInAppMessageLifecycleListener);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(IInAppMessageLifecycleListener it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.onWillDismiss(new InAppMessageLifecycleEvent(message));
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageWasDismissed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onMessageWasDismissed$1", f = "InAppMessagesManager.kt", i = {}, l = {671}, m = "invokeSuspend", n = {}, s = {})
    static final class C02021 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessage $message;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02021(InAppMessage inAppMessage, Continuation<? super C02021> continuation) {
            super(1, continuation);
            this.$message = inAppMessage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C02021(this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02021) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (InAppMessagesManager.messageWasDismissed$default(InAppMessagesManager.this, this.$message, false, this, 2, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleEventHandler
    public void onMessageWasDismissed(InAppMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02021(message, null), 1, null);
    }

    @Override // com.onesignal.inAppMessages.internal.triggers.ITriggerHandler
    public void onTriggerCompleted(String triggerId) {
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        Logging.debug$default("InAppMessagesManager.onTriggerCompleted: called with triggerId: " + triggerId, null, 2, null);
        new HashSet().add(triggerId);
    }

    @Override // com.onesignal.inAppMessages.internal.triggers.ITriggerHandler
    public void onTriggerConditionChanged(String triggerId) {
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        Logging.debug$default("InAppMessagesManager.onTriggerConditionChanged()", null, 2, null);
        makeRedisplayMessagesAvailableWithTriggers(CollectionsKt.listOf(triggerId), false);
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02081(null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onTriggerConditionChanged$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onTriggerConditionChanged$1", f = "InAppMessagesManager.kt", i = {}, l = {IronSourceError.ERROR_NT_INSTANCE_INIT_TIMEOUT}, m = "invokeSuspend", n = {}, s = {})
    static final class C02081 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C02081(Continuation<? super C02081> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C02081(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02081) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (InAppMessagesManager.this.evaluateInAppMessages(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.inAppMessages.internal.triggers.ITriggerHandler
    public void onTriggerChanged(String newTriggerKey) {
        Intrinsics.checkNotNullParameter(newTriggerKey, "newTriggerKey");
        Logging.debug$default("InAppMessagesManager.onTriggerChanged(newTriggerKey: " + newTriggerKey + ')', null, 2, null);
        makeRedisplayMessagesAvailableWithTriggers(CollectionsKt.listOf(newTriggerKey), true);
        ThreadUtilsKt.suspendifyOnThread$default(0, new C02071(null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$onTriggerChanged$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$onTriggerChanged$1", f = "InAppMessagesManager.kt", i = {}, l = {719}, m = "invokeSuspend", n = {}, s = {})
    static final class C02071 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C02071(Continuation<? super C02071> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return InAppMessagesManager.this.new C02071(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02071) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (InAppMessagesManager.this.evaluateInAppMessages(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object beginProcessingPrompts(InAppMessage inAppMessage, List<? extends InAppMessagePrompt> list, Continuation<? super Unit> continuation) {
        if (!list.isEmpty()) {
            Logging.debug$default("InAppMessagesManager.beginProcessingPrompts: IAM showing prompts from IAM: " + inAppMessage, null, 2, null);
            this._displayer.dismissCurrentInAppMessage();
            Object objShowMultiplePrompts = showMultiplePrompts(inAppMessage, list, continuation);
            return objShowMultiplePrompts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objShowMultiplePrompts : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fireOutcomesForClick(String str, List<InAppMessageOutcome> list, Continuation<? super Unit> continuation) {
        C01941 c01941;
        Iterator<InAppMessageOutcome> it;
        InAppMessagesManager inAppMessagesManager;
        if (continuation instanceof C01941) {
            c01941 = (C01941) continuation;
            if ((c01941.label & Integer.MIN_VALUE) != 0) {
                c01941.label -= Integer.MIN_VALUE;
            } else {
                c01941 = new C01941(continuation);
            }
        } else {
            c01941 = new C01941(continuation);
        }
        Object obj = c01941.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01941.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this._influenceManager.onDirectInfluenceFromIAM(str);
            it = list.iterator();
            inAppMessagesManager = this;
        } else if (i == 1 || i == 2 || i == 3) {
            it = (Iterator) c01941.L$1;
            inAppMessagesManager = (InAppMessagesManager) c01941.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            InAppMessageOutcome next = it.next();
            String name = next.getName();
            if (next.getIsUnique()) {
                IOutcomeEventsController iOutcomeEventsController = inAppMessagesManager._outcomeEventsController;
                c01941.L$0 = inAppMessagesManager;
                c01941.L$1 = it;
                c01941.label = 1;
                if (iOutcomeEventsController.sendUniqueOutcomeEvent(name, c01941) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (next.getWeight() > 0.0f) {
                IOutcomeEventsController iOutcomeEventsController2 = inAppMessagesManager._outcomeEventsController;
                float weight = next.getWeight();
                c01941.L$0 = inAppMessagesManager;
                c01941.L$1 = it;
                c01941.label = 2;
                if (iOutcomeEventsController2.sendOutcomeEventWithValue(name, weight, c01941) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                IOutcomeEventsController iOutcomeEventsController3 = inAppMessagesManager._outcomeEventsController;
                c01941.L$0 = inAppMessagesManager;
                c01941.L$1 = it;
                c01941.label = 3;
                if (iOutcomeEventsController3.sendOutcomeEvent(name, c01941) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fireTagCallForClick(InAppMessageClickResult action) {
        if (action.getTags() != null) {
            InAppMessageTag tags = action.getTags();
            if ((tags != null ? tags.getTagsToAdd() : null) != null) {
                JSONUtils jSONUtils = JSONUtils.INSTANCE;
                JSONObject tagsToAdd = tags.getTagsToAdd();
                Intrinsics.checkNotNull(tagsToAdd);
                this._userManager.addTags(jSONUtils.newStringMapFromJSONObject(tagsToAdd));
            }
            if ((tags != null ? tags.getTagsToRemove() : null) != null) {
                JSONUtils jSONUtils2 = JSONUtils.INSTANCE;
                JSONArray tagsToRemove = tags != null ? tags.getTagsToRemove() : null;
                Intrinsics.checkNotNull(tagsToRemove);
                this._userManager.removeTags(jSONUtils2.newStringSetFromJSONArray(tagsToRemove));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x006d  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ba A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:27:0x00de  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[LOOP:0: B:17:0x0067->B:44:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00bb -> B:25:0x00c0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object showMultiplePrompts(com.onesignal.inAppMessages.internal.InAppMessage r20, java.util.List<? extends com.onesignal.inAppMessages.internal.prompt.impl.InAppMessagePrompt> r21, kotlin.coroutines.Continuation<? super kotlin.Unit> r22) {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.inAppMessages.internal.InAppMessagesManager.showMultiplePrompts(com.onesignal.inAppMessages.internal.InAppMessage, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fireClickAction(InAppMessageClickResult action) {
        if (action.getUrl() != null) {
            if (action.getUrl().length() > 0) {
                if (action.getUrlTarget() == InAppMessageActionUrlType.BROWSER) {
                    AndroidUtils.INSTANCE.openURLInBrowser(this._applicationService.getAppContext(), action.getUrl());
                } else if (action.getUrlTarget() == InAppMessageActionUrlType.IN_APP_WEBVIEW) {
                    OneSignalChromeTab.INSTANCE.open$com_onesignal_inAppMessages(action.getUrl(), true, this._applicationService.getAppContext());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logInAppMessagePreviewActions(InAppMessageClickResult action) {
        if (action.getTags() != null) {
            Logging.debug$default("InAppMessagesManager.logInAppMessagePreviewActions: Tags detected inside of the action click payload, ignoring because action came from IAM preview:: " + action.getTags(), null, 2, null);
        }
        if (action.getOutcomes().size() > 0) {
            Logging.debug$default("InAppMessagesManager.logInAppMessagePreviewActions: Outcomes detected inside of the action click payload, ignoring because action came from IAM preview: " + action.getOutcomes(), null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object firePublicClickHandler(InAppMessage inAppMessage, InAppMessageClickResult inAppMessageClickResult, Continuation<? super Unit> continuation) throws Throwable {
        if (!this.messageClickCallback.getHasSubscribers()) {
            return Unit.INSTANCE;
        }
        this._influenceManager.onDirectInfluenceFromIAM(inAppMessage.getMessageId());
        Object objSuspendingFireOnMain = this.messageClickCallback.suspendingFireOnMain(new AnonymousClass2(new InAppMessageClickEvent(inAppMessage, inAppMessageClickResult), null), continuation);
        return objSuspendingFireOnMain == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSuspendingFireOnMain : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.InAppMessagesManager$firePublicClickHandler$2, reason: invalid class name */
    /* JADX INFO: compiled from: InAppMessagesManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/onesignal/inAppMessages/IInAppMessageClickListener;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.InAppMessagesManager$firePublicClickHandler$2", f = "InAppMessagesManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<IInAppMessageClickListener, Continuation<? super Unit>, Object> {
        final /* synthetic */ InAppMessageClickEvent $result;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(InAppMessageClickEvent inAppMessageClickEvent, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$result = inAppMessageClickEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$result, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(IInAppMessageClickListener iInAppMessageClickListener, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(iInAppMessageClickListener, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ((IInAppMessageClickListener) this.L$0).onClick(this.$result);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fireRESTCallForPageChange(InAppMessage inAppMessage, InAppMessagePage inAppMessagePage, Continuation<? super Unit> continuation) {
        C01961 c01961;
        String str;
        InAppMessagesManager inAppMessagesManager;
        if (continuation instanceof C01961) {
            c01961 = (C01961) continuation;
            if ((c01961.label & Integer.MIN_VALUE) != 0) {
                c01961.label -= Integer.MIN_VALUE;
            } else {
                c01961 = new C01961(continuation);
            }
        } else {
            c01961 = new C01961(continuation);
        }
        C01961 c01962 = c01961;
        Object obj = c01962.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01962.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strVariantIdForMessage = InAppHelper.INSTANCE.variantIdForMessage(inAppMessage, this._languageContext);
            if (strVariantIdForMessage == null) {
                return Unit.INSTANCE;
            }
            String pageId = inAppMessagePage.getPageId();
            String str2 = inAppMessage.getMessageId() + pageId;
            if (this.viewedPageIds.contains(str2)) {
                Logging.verbose$default("InAppMessagesManager: Already sent page impression for id: " + pageId, null, 2, null);
                return Unit.INSTANCE;
            }
            this.viewedPageIds.add(str2);
            try {
                IInAppBackendService iInAppBackendService = this._backend;
                String appId = this._configModelStore.getModel().getAppId();
                String id = this._subscriptionManager.getSubscriptions().getPush().getId();
                String messageId = inAppMessage.getMessageId();
                c01962.L$0 = this;
                c01962.L$1 = str2;
                c01962.label = 1;
                if (iInAppBackendService.sendIAMPageImpression(appId, id, strVariantIdForMessage, messageId, pageId, c01962) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str = str2;
                inAppMessagesManager = this;
            } catch (BackendException unused) {
                str = str2;
                inAppMessagesManager = this;
                inAppMessagesManager.viewedPageIds.remove(str);
            }
        } else if (i == 1) {
            str = (String) c01962.L$1;
            inAppMessagesManager = (InAppMessagesManager) c01962.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (BackendException unused2) {
                inAppMessagesManager.viewedPageIds.remove(str);
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        inAppMessagesManager._prefs.setViewPageImpressionedIds(inAppMessagesManager.viewedPageIds);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:46:0x00db  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fireRESTCallForClick(InAppMessage inAppMessage, InAppMessageClickResult inAppMessageClickResult, Continuation<? super Unit> continuation) {
        C01951 c01951;
        String clickId;
        InAppMessagesManager inAppMessagesManager;
        InAppMessage inAppMessage2;
        String str;
        if (continuation instanceof C01951) {
            c01951 = (C01951) continuation;
            if ((c01951.label & Integer.MIN_VALUE) != 0) {
                c01951.label -= Integer.MIN_VALUE;
            } else {
                c01951 = new C01951(continuation);
            }
        } else {
            c01951 = new C01951(continuation);
        }
        C01951 c01952 = c01951;
        Object obj = c01952.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01952.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strVariantIdForMessage = InAppHelper.INSTANCE.variantIdForMessage(inAppMessage, this._languageContext);
            if (strVariantIdForMessage == null) {
                return Unit.INSTANCE;
            }
            clickId = inAppMessageClickResult.getClickId();
            if (!(inAppMessage.getRedisplayStats().getIsRedisplayEnabled() && clickId != null && inAppMessage.isClickAvailable(clickId)) && CollectionsKt.contains(this.clickedClickIds, clickId)) {
                return Unit.INSTANCE;
            }
            if (clickId != null) {
                this.clickedClickIds.add(clickId);
                inAppMessage.addClickId(clickId);
            }
            try {
                IInAppBackendService iInAppBackendService = this._backend;
                String appId = this._configModelStore.getModel().getAppId();
                String id = this._subscriptionManager.getSubscriptions().getPush().getId();
                String messageId = inAppMessage.getMessageId();
                boolean isFirstClick = inAppMessageClickResult.getIsFirstClick();
                c01952.L$0 = this;
                c01952.L$1 = inAppMessage;
                c01952.L$2 = clickId;
                c01952.label = 1;
                if (iInAppBackendService.sendIAMClick(appId, id, strVariantIdForMessage, messageId, clickId, isFirstClick, c01952) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                inAppMessagesManager = this;
            } catch (BackendException unused) {
                inAppMessagesManager = this;
                inAppMessage2 = inAppMessage;
                str = clickId;
                TypeIntrinsics.asMutableCollection(inAppMessagesManager.clickedClickIds).remove(str);
                if (str != null) {
                    inAppMessage2.removeClickId(str);
                }
                return Unit.INSTANCE;
            }
        } else if (i == 1) {
            str = (String) c01952.L$2;
            inAppMessage2 = (InAppMessage) c01952.L$1;
            inAppMessagesManager = (InAppMessagesManager) c01952.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                clickId = str;
                inAppMessage = inAppMessage2;
            } catch (BackendException unused2) {
                TypeIntrinsics.asMutableCollection(inAppMessagesManager.clickedClickIds).remove(str);
                if (str != null) {
                    inAppMessage2.removeClickId(str);
                }
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        try {
            inAppMessagesManager._prefs.setClickedMessagesId(inAppMessagesManager.clickedClickIds);
        } catch (BackendException unused3) {
            inAppMessage2 = inAppMessage;
            str = clickId;
            TypeIntrinsics.asMutableCollection(inAppMessagesManager.clickedClickIds).remove(str);
            if (str != null) {
                inAppMessage2.removeClickId(str);
            }
        }
        return Unit.INSTANCE;
    }

    private final void showAlertDialogMessage(final InAppMessage inAppMessage, final List<? extends InAppMessagePrompt> prompts) {
        String string = this._applicationService.getAppContext().getString(R.string.location_permission_missing_title);
        Intrinsics.checkNotNullExpressionValue(string, "_applicationService.appC…permission_missing_title)");
        String string2 = this._applicationService.getAppContext().getString(R.string.location_permission_missing_message);
        Intrinsics.checkNotNullExpressionValue(string2, "_applicationService.appC…rmission_missing_message)");
        new AlertDialog.Builder(this._applicationService.getCurrent()).setTitle(string).setMessage(string2).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.onesignal.inAppMessages.internal.InAppMessagesManager$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                InAppMessagesManager.m447showAlertDialogMessage$lambda7(this.f$0, inAppMessage, prompts, dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showAlertDialogMessage$lambda-7, reason: not valid java name */
    public static final void m447showAlertDialogMessage$lambda7(InAppMessagesManager this$0, InAppMessage inAppMessage, List prompts, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(inAppMessage, "$inAppMessage");
        Intrinsics.checkNotNullParameter(prompts, "$prompts");
        ThreadUtilsKt.suspendifyOnThread$default(0, new InAppMessagesManager$showAlertDialogMessage$1$1(this$0, inAppMessage, prompts, null), 1, null);
    }
}
