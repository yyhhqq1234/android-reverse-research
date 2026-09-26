.class final Lim/yixin/sdk/api/YXApiImplementation;
.super Ljava/lang/Object;
.source "YXApiImplementation.java"

# interfaces
.implements Lim/yixin/sdk/api/IYXAPI;


# instance fields
.field private appId:Ljava/lang/String;

.field private applicationContext:Landroid/content/Context;

.field private handlerThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAppId"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "YXApiImplementation_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->handlerThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lim/yixin/sdk/api/YXApiImplementation;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lim/yixin/sdk/api/YXApiImplementation;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getYixinAppPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "im.yixin"

    .line 150
    const/16 v3, 0x40

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-class v1, Lim/yixin/sdk/api/YXApiImplementation;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error when getYixinAppPackageInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v1, v2}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showYixinDownloadPage()V
    .locals 5

    .prologue
    .line 108
    :try_start_0
    const-class v3, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v4, "showYixinDownloadPage:http://yixin.im/"

    invoke-static {v3, v4}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v3, "http://yixin.im/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    const-class v3, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v4, "showYixinDownloadPage:http://yixin.im/ failed!"

    invoke-static {v3, v4, v1}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const-string v3, "\u60a8\u8fd8\u672a\u5b89\u88c5\u6613\u4fe1\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5!"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private toast(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->mHandler:Landroid/os/Handler;

    new-instance v1, Lim/yixin/sdk/api/YXApiImplementation$1;

    invoke-direct {v1, p0, p1, p2}, Lim/yixin/sdk/api/YXApiImplementation$1;-><init>(Lim/yixin/sdk/api/YXApiImplementation;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method private validateYixinAppSignature()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 127
    const-class v3, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v4, "validateYixinSignature"

    invoke-static {v3, v4}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->getYixinAppPackageInfo()Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    if-nez v1, :cond_0

    .line 139
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v3

    const-class v4, Lim/yixin/sdk/api/YXApiImplementation;

    .line 136
    const-string v5, "error when validateYixinAppSignature"

    .line 135
    invoke-virtual {v3, v4, v5, v0}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v2}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinAppSignature([Landroid/content/pm/Signature;)Z

    move-result v2

    goto :goto_0
.end method

.method private validateYixinAppSignature([Landroid/content/pm/Signature;)Z
    .locals 6
    .param p1, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 170
    .local v0, "aSignature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "str":Ljava/lang/String;
    const-string v5, "3082019f30820108a003020102020450d3f283300d06092a864886f70d010105050030133111300f060355040313086368696e6174656c3020170d3132313232313035323431395a180f32303632313230393035323431395a30133111300f060355040313086368696e6174656c30819f300d06092a864886f70d010101050003818d00308189028181009ec811f81e259d74109087d546a6b5cf0d4372a5c095c3de42db8dad608698bb9885d0afed6b1fb8188eec5a51dc086e7a9ef00a2071ec92f586a8faf9a3587a98d09a6e45bb3858f4a3ff1052140fa3ece902518bafe1935351a822eae166825b31f09fb0f25cd96fe3ee7b6b3f0d6fa20126a110f5af481097325a7f0c442b0203010001300d06092a864886f70d010105050003818100776f185197eb6f104a81269ac79d9f9aa02e570d535ea5082e9838a816eecce344fe70b222ec1a7ccb2c3d5ca9331d305f0925c2b111eebecdc42adbd34c85e1f1eb636c2589fcafe23d63ac48bbce8f0ac0ddbb5a72bbe13ee2273a18a7844365102d6395eebfef266a263c8b3ca8196bfda79375534d22b5be5a8a13c08ea8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    const-string v5, "3082030d308201f5a003020102020401cc2ba1300d06092a864886f70d01010b05003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3133303231373232333431305a170d3433303231303232333431305a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730820122300d06092a864886f70d01010105000382010f003082010a0282010100a986894ad9e5faad066d576366d07bb7ab37ad97bb1691b01786d4a37202e7b71115a18392daef2639d8aa6d1c3ac9258c0ab75d006f34bc0273be63000c143843a8ef6ceda0f1de4426fab56c92a59e92d45874831746d39f8982ff89c674d286287b2d749cccd04ce112acb9ffb574a1da7d00188680562adfabe3b03bfef01cdb2e1452e9849f3269378d291bb7525b2f02d0a68725ab1237fd09d3c7e24746160b6a105fc4c781a89cd2aaeec98bcff24cc9916baab82bba79a14299593a543523bb1f327a56947908300b5713b6dd490bc7339d661bd356f2d4c453b78074974b48fd1c5b4ea48e3cb8603ef3cde0dfbf1e3bc2b9d7cb6505f9861b49150203010001a321301f301d0603551d0e041604147f7ead059498d489e43eb0e1a3a8fa57798aa205300d06092a864886f70d01010b050003820101007b650f42089d53e4486c4f0f0eb0fcda466aecd52cf9ce1af4bb48e540031e3b1cd76dc153173b823951882ba8c1790b7eb8f735deb222e0705884980d3fd1507777a82c9ff0cc8b4f6f98cb8ee219fc816fcbea1969055a913e0b7c10fa6af8dfeefc5cb79c88c3d420bb25bb7823610fdc48398b42486b0797d15ac4275138d7a4c7aa49f907efd80c26fc3e498492d633dbb1b866ac1fa42e39e26d27b9512d2cb1850e07ae924c0b2842d2a52c5216b927ed5267876ace7c6b737c05740c623f24cff28c9b23a514bc0daa510d25c646b5c45bf3c5a0f81d176eb9f454d1ef611aaae461cb8fb3ed01baf9017cda4801bd99d2bf3ef327a4ba7b7a0dc517"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 173
    const-string v5, "308201e53082014ea0030201020204527b5e4f300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3133313130373039333330335a170d3433313033313039333330335a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100ba479ba3a12175d85c0972b8b9fc82bea78495f927bcd8495abc56d3fab71e2abfe48dfe380e6fe8b8ac00188dfa12c43e0e118ccceaca24329ed097a4ac056de773ae886ca5a3154445886ba4e17bc8e1d3d022d4a05ce7ad8636493b559078c69abad1ae878fc3b85f03790a159c30840a8c838a00a91b23e94602fb986a730203010001300d06092a864886f70d010105050003818100a058af05ddbfb4a894253a7d233b101ff2010d9ed1bf57c947b6f4ad0e64b2b5fee326b92b4da4261ca9aa473ebb20aa570f62f0105a8c13919964af20e97608db137434c6975617291344f6b6debaafb75bbc4f33922f7d0fd90c4fcba5c1b082b141d1f0f098b9ca73cd24910a461634920e5e47f8a6c611c1cc2c2243ebde"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 169
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private validateYixinAppVersion(Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    const-class v3, Lim/yixin/sdk/api/YXApiImplementation;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "(packageInfo != null)="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string v4, ",packageInfo.versionCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v3, v0}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 189
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x92

    if-le v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    :cond_1
    move v1, v2

    .line 189
    goto :goto_1
.end method

.method private validateYixinCollectAppVersion(Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    const-class v3, Lim/yixin/sdk/api/YXApiImplementation;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "(packageInfo != null)="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v4, ",packageInfo.versionCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v3, v0}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0xb7

    if-le v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v1, v2

    .line 100
    goto :goto_1
.end method

.method private validateYixinOauthAppVersion(Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    const-class v3, Lim/yixin/sdk/api/YXApiImplementation;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "(packageInfo != null)="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string v4, ",packageInfo.versionCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v3, v0}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0xb2

    if-le v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 199
    goto :goto_0

    :cond_1
    move v1, v2

    .line 201
    goto :goto_1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;Lim/yixin/sdk/api/IYXAPICallbackEventHandler;)Z
    .locals 13
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "paramIYXAPIEventHandler"    # Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 309
    invoke-static {p1}, Lim/yixin/sdk/channel/YXMessageProtocol;->parseProtocol(Landroid/content/Intent;)Lim/yixin/sdk/channel/YXMessageProtocol;

    move-result-object v1

    .line 310
    .local v1, "protocol":Lim/yixin/sdk/channel/YXMessageProtocol;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lim/yixin/sdk/channel/YXMessageProtocol;->isValid()Z

    move-result v10

    if-nez v10, :cond_1

    .line 311
    :cond_0
    const-class v8, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v10, "handleIntent failed because !protocol.isValid()"

    invoke-static {v8, v10}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    move v8, v9

    .line 355
    :goto_0
    return v8

    .line 314
    :cond_1
    const-string v10, "onReq"

    invoke-virtual {v1}, Lim/yixin/sdk/channel/YXMessageProtocol;->getCommand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 315
    const-string v10, "_yxapi_command_type"

    invoke-virtual {p1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "cmdType":I
    packed-switch v0, :pswitch_data_0

    .line 330
    const-class v9, Lim/yixin/sdk/api/YXApiImplementation;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleIntent onReq do nothing, CMD_TYPE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_0
    new-instance v2, Lim/yixin/sdk/api/SendMessageToYX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v2, v9}, Lim/yixin/sdk/api/SendMessageToYX$Req;-><init>(Landroid/os/Bundle;)V

    .line 319
    .local v2, "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    invoke-interface {p2, v2}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onReq(Lim/yixin/sdk/api/BaseReq;)V

    goto :goto_0

    .line 322
    .end local v2    # "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    :pswitch_1
    new-instance v4, Lim/yixin/sdk/api/SendAuthToYX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v4, v9}, Lim/yixin/sdk/api/SendAuthToYX$Req;-><init>(Landroid/os/Bundle;)V

    .line 323
    .local v4, "req2":Lim/yixin/sdk/api/SendAuthToYX$Req;
    invoke-interface {p2, v4}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onReq(Lim/yixin/sdk/api/BaseReq;)V

    goto :goto_0

    .line 326
    .end local v4    # "req2":Lim/yixin/sdk/api/SendAuthToYX$Req;
    :pswitch_2
    new-instance v3, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v3, v9}, Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;-><init>(Landroid/os/Bundle;)V

    .line 327
    .local v3, "req1":Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;
    invoke-interface {p2, v3}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onReq(Lim/yixin/sdk/api/BaseReq;)V

    goto :goto_0

    .line 333
    .end local v0    # "cmdType":I
    .end local v3    # "req1":Lim/yixin/sdk/api/ShowYXMessageFromYX$Req;
    :cond_2
    const-string v10, "onResp"

    invoke-virtual {v1}, Lim/yixin/sdk/channel/YXMessageProtocol;->getCommand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 334
    const-string v10, "_yxapi_command_type"

    invoke-virtual {p1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .restart local v0    # "cmdType":I
    packed-switch v0, :pswitch_data_1

    .line 349
    const-class v9, Lim/yixin/sdk/api/YXApiImplementation;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleIntent onResp do nothing, CMD_TYPE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_3
    new-instance v5, Lim/yixin/sdk/api/SendMessageToYX$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v5, v9}, Lim/yixin/sdk/api/SendMessageToYX$Resp;-><init>(Landroid/os/Bundle;)V

    .line 338
    .local v5, "resp":Lim/yixin/sdk/api/SendMessageToYX$Resp;
    invoke-interface {p2, v5}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onResp(Lim/yixin/sdk/api/BaseResp;)V

    goto/16 :goto_0

    .line 341
    .end local v5    # "resp":Lim/yixin/sdk/api/SendMessageToYX$Resp;
    :pswitch_4
    new-instance v6, Lim/yixin/sdk/api/SendAuthToYX$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v6, v9}, Lim/yixin/sdk/api/SendAuthToYX$Resp;-><init>(Landroid/os/Bundle;)V

    .line 342
    .local v6, "resp1":Lim/yixin/sdk/api/SendAuthToYX$Resp;
    invoke-interface {p2, v6}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onResp(Lim/yixin/sdk/api/BaseResp;)V

    goto/16 :goto_0

    .line 345
    .end local v6    # "resp1":Lim/yixin/sdk/api/SendAuthToYX$Resp;
    :pswitch_5
    new-instance v7, Lim/yixin/sdk/api/ShowYXMessageFromYX$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v7, v9}, Lim/yixin/sdk/api/ShowYXMessageFromYX$Resp;-><init>(Landroid/os/Bundle;)V

    .line 346
    .local v7, "resp2":Lim/yixin/sdk/api/ShowYXMessageFromYX$Resp;
    invoke-interface {p2, v7}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onResp(Lim/yixin/sdk/api/BaseResp;)V

    goto/16 :goto_0

    .line 353
    .end local v0    # "cmdType":I
    .end local v7    # "resp2":Lim/yixin/sdk/api/ShowYXMessageFromYX$Resp;
    :cond_3
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v8

    const-class v10, Lim/yixin/sdk/api/YXApiImplementation;

    .line 354
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "handleIntent error command passed from Yixin "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lim/yixin/sdk/channel/YXMessageProtocol;->getCommand()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 353
    invoke-virtual {v8, v10, v11, v12}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v8, v9

    .line 355
    goto/16 :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSupportCollect()Z
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->getYixinAppPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinCollectAppVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    return v1
.end method

.method public isSupportOauth()Z
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->getYixinAppPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 88
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinOauthAppVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    return v1
.end method

.method public isYXAppInstalled()Z
    .locals 2

    .prologue
    .line 81
    const-class v0, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v1, "isYXAppInstalled"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinAppSignature()Z

    move-result v0

    return v0
.end method

.method public registerApp()Z
    .locals 5

    .prologue
    .line 208
    const-class v0, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v1, "registerApp"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinAppSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    const-class v0, Lim/yixin/sdk/api/YXApiImplementation;

    .line 212
    const-string v1, "registerApp: validateYixinSignature - false or isBlank(this.appId)!"

    .line 211
    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 215
    :cond_1
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    const-string v1, "im.yixin"

    .line 216
    const-string v2, "im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "yixin://registerapp?appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/channel/YXMessageChannel;->sendData2Yixin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendRequest(Lim/yixin/sdk/api/BaseReq;)Z
    .locals 12
    .param p1, "paramBaseReq"    # Lim/yixin/sdk/api/BaseReq;

    .prologue
    const/4 v7, 0x0

    .line 245
    new-instance v3, Lim/yixin/sdk/api/ExceptionInfo;

    const-class v6, Lim/yixin/sdk/api/YXApiImplementation;

    invoke-direct {v3, p1, v6}, Lim/yixin/sdk/api/ExceptionInfo;-><init>(Lim/yixin/sdk/api/BaseReq;Ljava/lang/Class;)V

    .line 247
    .local v3, "exceptionInfo":Lim/yixin/sdk/api/ExceptionInfo;
    :try_start_0
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->getYixinAppPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 248
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_0

    .line 249
    const-string v6, "\u60a8\u8fd8\u672a\u5b89\u88c5\u6613\u4fe1\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5!"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V

    .line 250
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->showYixinDownloadPage()V

    move v6, v7

    .line 301
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v6

    .line 253
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v6}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinAppSignature([Landroid/content/pm/Signature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 254
    const-string v6, "\u6613\u4fe1\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u4f7f\u7528\u6613\u4fe1\u5b98\u65b9\u7248\u672c!"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V

    .line 255
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->showYixinDownloadPage()V

    move v6, v7

    .line 256
    goto :goto_0

    .line 258
    :cond_1
    if-nez p1, :cond_2

    .line 259
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v6

    .line 260
    const-string v8, "sendReq error parameter paramBaseReq is null."

    .line 259
    invoke-virtual {v6, v3, v8}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v6, v7

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0, v5}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinAppVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 264
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v6

    const-class v8, Lim/yixin/sdk/api/YXApiImplementation;

    .line 265
    const-string v9, "validateYixinAppVersion false, \u60a8\u7684\u6613\u4fe1\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u5148\u5347\u7ea7!"

    const/4 v10, 0x0

    .line 264
    invoke-virtual {v6, v8, v9, v10}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const-string v6, "\u60a8\u7684\u6613\u4fe1\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u5148\u5347\u7ea7!"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V

    .line 267
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->showYixinDownloadPage()V

    move v6, v7

    .line 268
    goto :goto_0

    .line 272
    :cond_3
    instance-of v6, p1, Lim/yixin/sdk/api/SendAuthToYX$Req;

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinOauthAppVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 273
    const-string v6, "\u60a8\u7684\u6613\u4fe1\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u5148\u5347\u7ea7!"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V

    .line 274
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->showYixinDownloadPage()V

    move v6, v7

    .line 275
    goto :goto_0

    .line 278
    :cond_4
    instance-of v6, p1, Lim/yixin/sdk/api/SendMessageToYX$Req;

    if-eqz v6, :cond_5

    .line 279
    move-object v0, p1

    check-cast v0, Lim/yixin/sdk/api/SendMessageToYX$Req;

    move-object v1, v0

    .line 280
    .local v1, "baseReq":Lim/yixin/sdk/api/SendMessageToYX$Req;
    iget v6, v1, Lim/yixin/sdk/api/SendMessageToYX$Req;->scene:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    invoke-direct {p0, v5}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinCollectAppVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 281
    const-string v6, "\u60a8\u7684\u6613\u4fe1\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u5148\u5347\u7ea7!"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lim/yixin/sdk/api/YXApiImplementation;->toast(Ljava/lang/CharSequence;I)V

    .line 282
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->showYixinDownloadPage()V

    move v6, v7

    .line 283
    goto :goto_0

    .line 286
    .end local v1    # "baseReq":Lim/yixin/sdk/api/SendMessageToYX$Req;
    :cond_5
    const-class v6, Lim/yixin/sdk/api/YXApiImplementation;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendReq: transaction="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lim/yixin/sdk/api/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, v3}, Lim/yixin/sdk/api/BaseReq;->checkArgs(Lim/yixin/sdk/api/ExceptionInfo;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 288
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v6

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendReq: transaction="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lim/yixin/sdk/api/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", checkArgs fail."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    invoke-virtual {v6, v3, v8}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v6, v7

    .line 290
    goto/16 :goto_0

    .line 292
    :cond_6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v4, "localBundle":Landroid/os/Bundle;
    invoke-virtual {p1, v4}, Lim/yixin/sdk/api/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 294
    iget-object v6, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    .line 295
    const-string v8, "im.yixin"

    const-string v9, "im.yixin.sdk.communication.YXEntryActivity"

    .line 296
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "yixin://sendreq?appid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 294
    invoke-static {v6, v8, v9, v10, v4}, Lim/yixin/sdk/channel/YXMessageActivityChannel;->sendData2Yixin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto/16 :goto_0

    .line 297
    .end local v4    # "localBundle":Landroid/os/Bundle;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/Throwable;
    iput-object v2, v3, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    .line 299
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v8

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v6, "sendReq: transaction="

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_7

    const-string v6, "null"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " error"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-virtual {v8, v3, v6}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v6, v7

    .line 301
    goto/16 :goto_0

    .line 300
    :cond_7
    iget-object v6, p1, Lim/yixin/sdk/api/BaseReq;->transaction:Ljava/lang/String;

    goto :goto_1
.end method

.method public unRegisterApp()V
    .locals 5

    .prologue
    .line 225
    const-class v0, Lim/yixin/sdk/api/YXApiImplementation;

    const-string v1, "unregisterApp"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lim/yixin/sdk/api/YXApiImplementation;->validateYixinAppSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    const-class v0, Lim/yixin/sdk/api/YXApiImplementation;

    .line 228
    const-string v1, "unregisterApp: validateYixinSignature - false or isBlank(this.appId)!"

    .line 227
    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->applicationContext:Landroid/content/Context;

    const-string v1, "im.yixin"

    .line 232
    const-string v2, "im.yixin.sdk.Intent.ACTION_HANDLE_APP_UNREGISTER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "yixin://unregisterapp?appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lim/yixin/sdk/api/YXApiImplementation;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/channel/YXMessageChannel;->sendData2Yixin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lim/yixin/sdk/api/YXApiImplementation;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method
