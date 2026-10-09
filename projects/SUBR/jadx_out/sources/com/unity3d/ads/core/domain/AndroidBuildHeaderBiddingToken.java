package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.TokenCounters;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TcfRepository;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import gatewayprotocol.v1.HeaderBiddingTokenKt;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import gatewayprotocol.v1.InitializationDataOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import gatewayprotocol.v1.TokenCountersKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidBuildHeaderBiddingToken.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\u0011\u0010\u0015\u001a\u00020\u0016H\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;", "Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;", "generateId", "Lcom/unity3d/ads/core/domain/GetByteStringId;", "getClientInfo", "Lcom/unity3d/ads/core/domain/GetClientInfo;", "getTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "getLimitedSessionToken", "Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;", "getInitializationData", "Lcom/unity3d/ads/core/domain/GetInitializationData;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "tcfRepository", "Lcom/unity3d/ads/core/data/repository/TcfRepository;", "(Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;Lcom/unity3d/ads/core/domain/GetInitializationData;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/repository/TcfRepository;)V", "invoke", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidBuildHeaderBiddingToken implements BuildHeaderBiddingToken {
    private final CampaignRepository campaignRepository;
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetByteStringId generateId;
    private final GetClientInfo getClientInfo;
    private final GetInitializationData getInitializationData;
    private final GetLimitedSessionToken getLimitedSessionToken;
    private final GetSharedDataTimestamps getTimestamps;
    private final SessionRepository sessionRepository;
    private final TcfRepository tcfRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidBuildHeaderBiddingToken.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken", f = "AndroidBuildHeaderBiddingToken.kt", i = {0, 0, 0, 1, 1, 1, 2, 2}, l = {45, 48, 50}, m = "invoke", n = {"this", "currentTokenCounters", "$this$invoke_u24lambda_u242", "this", "currentTokenCounters", "$this$invoke_u24lambda_u242", "currentTokenCounters", "$this$invoke_u24lambda_u242"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$0", "L$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidBuildHeaderBiddingToken.this.invoke(this);
        }
    }

    public AndroidBuildHeaderBiddingToken(GetByteStringId generateId, GetClientInfo getClientInfo, GetSharedDataTimestamps getTimestamps, GetLimitedSessionToken getLimitedSessionToken, GetInitializationData getInitializationData, DeviceInfoRepository deviceInfoRepository, SessionRepository sessionRepository, CampaignRepository campaignRepository, TcfRepository tcfRepository) {
        Intrinsics.checkNotNullParameter(generateId, "generateId");
        Intrinsics.checkNotNullParameter(getClientInfo, "getClientInfo");
        Intrinsics.checkNotNullParameter(getTimestamps, "getTimestamps");
        Intrinsics.checkNotNullParameter(getLimitedSessionToken, "getLimitedSessionToken");
        Intrinsics.checkNotNullParameter(getInitializationData, "getInitializationData");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(tcfRepository, "tcfRepository");
        this.generateId = generateId;
        this.getClientInfo = getClientInfo;
        this.getTimestamps = getTimestamps;
        this.getLimitedSessionToken = getLimitedSessionToken;
        this.getInitializationData = getInitializationData;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.campaignRepository = campaignRepository;
        this.tcfRepository = tcfRepository;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0178 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0179  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.BuildHeaderBiddingToken
    public Object invoke(Continuation<? super HeaderBiddingTokenOuterClass.HeaderBiddingToken> continuation) {
        AnonymousClass1 anonymousClass1;
        TokenCounters tokenCounters;
        HeaderBiddingTokenKt.Dsl dsl_create;
        HeaderBiddingTokenKt.Dsl dsl;
        AndroidBuildHeaderBiddingToken androidBuildHeaderBiddingToken;
        HeaderBiddingTokenKt.Dsl dsl2;
        HeaderBiddingTokenKt.Dsl dsl3;
        HeaderBiddingTokenKt.Dsl dsl4;
        TokenCounters tokenCounters2;
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
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i != 0) {
            if (i == 1) {
                dsl_create = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$4;
                dsl2 = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$3;
                dsl3 = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$2;
                tokenCounters = (TokenCounters) anonymousClass1.L$1;
                androidBuildHeaderBiddingToken = (AndroidBuildHeaderBiddingToken) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
                dsl_create.setInitializationData((InitializationDataOuterClass.InitializationData) objInvoke);
                DeviceInfoRepository deviceInfoRepository = androidBuildHeaderBiddingToken.deviceInfoRepository;
                anonymousClass1.L$0 = tokenCounters;
                anonymousClass1.L$1 = dsl3;
                anonymousClass1.L$2 = dsl2;
                anonymousClass1.L$3 = dsl2;
                anonymousClass1.L$4 = null;
                anonymousClass1.label = 3;
                objInvoke = deviceInfoRepository.staticDeviceInfo(anonymousClass1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                dsl4 = dsl2;
                dsl_create = dsl4;
                dsl = dsl3;
                tokenCounters2 = tokenCounters;
            } else if (i == 2) {
                dsl_create = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$4;
                dsl2 = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$3;
                dsl3 = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$2;
                tokenCounters = (TokenCounters) anonymousClass1.L$1;
                androidBuildHeaderBiddingToken = (AndroidBuildHeaderBiddingToken) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
                dsl_create.setLimitedSessionToken((UniversalRequestOuterClass.LimitedSessionToken) objInvoke);
                DeviceInfoRepository deviceInfoRepository2 = androidBuildHeaderBiddingToken.deviceInfoRepository;
                anonymousClass1.L$0 = tokenCounters;
                anonymousClass1.L$1 = dsl3;
                anonymousClass1.L$2 = dsl2;
                anonymousClass1.L$3 = dsl2;
                anonymousClass1.L$4 = null;
                anonymousClass1.label = 3;
                objInvoke = deviceInfoRepository2.staticDeviceInfo(anonymousClass1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                dsl4 = dsl2;
                dsl_create = dsl4;
                dsl = dsl3;
                tokenCounters2 = tokenCounters;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dsl4 = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$3;
                dsl_create = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$2;
                dsl = (HeaderBiddingTokenKt.Dsl) anonymousClass1.L$1;
                tokenCounters2 = (TokenCounters) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            dsl4.setStaticDeviceInfo((StaticDeviceInfoOuterClass.StaticDeviceInfo) objInvoke);
            tokenCounters = tokenCounters2;
        } else {
            ResultKt.throwOnFailure(objInvoke);
            tokenCounters = this.sessionRepository.getTokenCounters();
            ByteString sessionToken = this.sessionRepository.getSessionToken();
            this.sessionRepository.incrementTokenSequenceNumber();
            HeaderBiddingTokenKt.Dsl.Companion companion = HeaderBiddingTokenKt.Dsl.INSTANCE;
            HeaderBiddingTokenOuterClass.HeaderBiddingToken.Builder builderNewBuilder = HeaderBiddingTokenOuterClass.HeaderBiddingToken.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
            dsl_create = companion._create(builderNewBuilder);
            dsl_create.setTokenId(this.generateId.invoke());
            dsl_create.setTokenNumber(this.sessionRepository.getHeaderBiddingTokenCounter());
            dsl_create.setClientInfo(this.getClientInfo.invoke());
            dsl_create.setTimestamps(this.getTimestamps.invoke());
            dsl_create.setSessionCounters(this.sessionRepository.getSessionCounters());
            dsl_create.setDynamicDeviceInfo(this.deviceInfoRepository.getDynamicDeviceInfo());
            PiiOuterClass.Pii piiData = this.deviceInfoRepository.getPiiData();
            if (!piiData.getAdvertisingId().isEmpty() || !piiData.getOpenAdvertisingTrackingId().isEmpty()) {
                dsl_create.setPii(piiData);
            }
            dsl_create.setCampaignState(this.campaignRepository.getCampaignState());
            String tcfString = this.tcfRepository.getTcfString();
            if (tcfString != null) {
                dsl_create.setTcf(ProtobufExtensionsKt.toISO8859ByteString(tcfString));
            }
            if (sessionToken.isEmpty()) {
                String gameId = this.sessionRepository.getGameId();
                boolean z = false;
                if (gameId != null) {
                    if (gameId.length() > 0) {
                        z = true;
                    }
                }
                if (z) {
                    GetInitializationData getInitializationData = this.getInitializationData;
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = tokenCounters;
                    anonymousClass1.L$2 = dsl_create;
                    anonymousClass1.L$3 = dsl_create;
                    anonymousClass1.L$4 = dsl_create;
                    anonymousClass1.label = 1;
                    objInvoke = getInitializationData.invoke(anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    androidBuildHeaderBiddingToken = this;
                    dsl2 = dsl_create;
                    dsl3 = dsl2;
                    dsl_create.setInitializationData((InitializationDataOuterClass.InitializationData) objInvoke);
                    DeviceInfoRepository deviceInfoRepository3 = androidBuildHeaderBiddingToken.deviceInfoRepository;
                    anonymousClass1.L$0 = tokenCounters;
                    anonymousClass1.L$1 = dsl3;
                    anonymousClass1.L$2 = dsl2;
                    anonymousClass1.L$3 = dsl2;
                    anonymousClass1.L$4 = null;
                    anonymousClass1.label = 3;
                    objInvoke = deviceInfoRepository3.staticDeviceInfo(anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    dsl4 = dsl2;
                    dsl_create = dsl4;
                    dsl = dsl3;
                    tokenCounters2 = tokenCounters;
                    dsl4.setStaticDeviceInfo((StaticDeviceInfoOuterClass.StaticDeviceInfo) objInvoke);
                    tokenCounters = tokenCounters2;
                } else {
                    GetLimitedSessionToken getLimitedSessionToken = this.getLimitedSessionToken;
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = tokenCounters;
                    anonymousClass1.L$2 = dsl_create;
                    anonymousClass1.L$3 = dsl_create;
                    anonymousClass1.L$4 = dsl_create;
                    anonymousClass1.label = 2;
                    objInvoke = getLimitedSessionToken.invoke(anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    androidBuildHeaderBiddingToken = this;
                    dsl2 = dsl_create;
                    dsl3 = dsl2;
                    dsl_create.setLimitedSessionToken((UniversalRequestOuterClass.LimitedSessionToken) objInvoke);
                    DeviceInfoRepository deviceInfoRepository4 = androidBuildHeaderBiddingToken.deviceInfoRepository;
                    anonymousClass1.L$0 = tokenCounters;
                    anonymousClass1.L$1 = dsl3;
                    anonymousClass1.L$2 = dsl2;
                    anonymousClass1.L$3 = dsl2;
                    anonymousClass1.L$4 = null;
                    anonymousClass1.label = 3;
                    objInvoke = deviceInfoRepository4.staticDeviceInfo(anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    dsl4 = dsl2;
                    dsl_create = dsl4;
                    dsl = dsl3;
                    tokenCounters2 = tokenCounters;
                    dsl4.setStaticDeviceInfo((StaticDeviceInfoOuterClass.StaticDeviceInfo) objInvoke);
                    tokenCounters = tokenCounters2;
                }
            } else {
                dsl_create.setSessionToken(this.sessionRepository.getSessionToken());
                dsl_create.setStaticDeviceInfo(this.deviceInfoRepository.cachedStaticDeviceInfo());
                dsl = dsl_create;
            }
        }
        TokenCountersKt.Dsl.Companion companion2 = TokenCountersKt.Dsl.INSTANCE;
        HeaderBiddingTokenOuterClass.TokenCounters.Builder builderNewBuilder2 = HeaderBiddingTokenOuterClass.TokenCounters.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder()");
        TokenCountersKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
        dsl_create2.setSeq(tokenCounters.getSeq());
        dsl_create2.setWins(tokenCounters.getWins());
        dsl_create2.setStarts(tokenCounters.getStarts());
        dsl_create.setTokenCounters(dsl_create2._build());
        return dsl._build();
    }
}
