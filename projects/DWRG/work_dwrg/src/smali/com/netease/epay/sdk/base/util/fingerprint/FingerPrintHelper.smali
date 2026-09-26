.class public Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerPrintHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;
    }
.end annotation


# instance fields
.field private authTimes:I

.field private callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

.field private data:Ljava/lang/String;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mLocalAndroidKeyStore:Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

.field private mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

.field private manager:Landroid/hardware/fingerprint/FingerprintManager;

.field private purpose:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->purpose:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    .line 40
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->manager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 41
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    .line 42
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalAndroidKeyStore:Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

    .line 43
    return-void
.end method


# virtual methods
.method public authenticate()Z
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    .line 98
    iget v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->purpose:I

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "IV"

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalAndroidKeyStore:Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;->getCryptoObject(I[B)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    move v0, v6

    .line 112
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalAndroidKeyStore:Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;->getCryptoObject(I[B)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    .line 107
    :cond_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->manager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move v0, v6

    .line 112
    goto :goto_0
.end method

.method public checkFingerprintAvailable(Landroid/content/Context;)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 63
    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-static {p1, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "FingerPrintHelper: miss permission FINGERPRINT"

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->isKeyProtectedEnforcedBySecureHardware()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->manager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->manager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsToken()Z
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteToken()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->delKeyData(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public generateToken()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->generateToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->data:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalAndroidKeyStore:Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;->generateKey(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->setPurpose(I)V

    .line 51
    return-void
.end method

.method public isKeyProtectedEnforcedBySecureHardware()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalAndroidKeyStore:Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalAndroidKeyStore;->isKeyProtectedEnforcedBySecureHardware()Z

    move-result v0

    return v0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .prologue
    .line 185
    iget v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    .line 186
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    iget v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    .line 189
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    iget v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    .line 178
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    iget v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authTimes:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    .line 181
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 6
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    const/4 v5, 0x1

    .line 126
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    invoke-interface {v0, v5}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 134
    iget v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->purpose:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 136
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v3, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    invoke-interface {v0, v5}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    goto :goto_0

    .line 142
    :cond_2
    const/16 v2, 0x8

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationSucceeded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :goto_1
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 146
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    invoke-interface {v0, v5}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    goto :goto_0

    .line 151
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 153
    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 154
    const/16 v2, 0x8

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v3, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v4, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->storeData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    iget-object v3, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mLocalSharedPreference:Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "IV"

    .line 156
    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/fingerprint/LocalSharedPreference;->storeData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->data:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationSucceeded(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    :goto_2
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 163
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    invoke-interface {v0, v5}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V

    goto/16 :goto_0

    .line 159
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;->onAuthenticationFail(Z)V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 161
    :catch_2
    move-exception v0

    goto :goto_2

    .line 144
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public setCallback(Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    .line 88
    return-void
.end method

.method public setPurpose(I)V
    .locals 0
    .param p1, "purpose"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->purpose:I

    .line 92
    return-void
.end method

.method public stopAuthenticate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 119
    iput-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 121
    :cond_0
    iput-object v1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->callback:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;

    .line 122
    return-void
.end method
