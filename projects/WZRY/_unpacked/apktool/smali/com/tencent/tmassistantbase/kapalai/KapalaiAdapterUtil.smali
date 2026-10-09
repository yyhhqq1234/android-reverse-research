.class public Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo03;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo03;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo05;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo05;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo06;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo06;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;

    invoke-direct {v2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;-><init>()V

    return-void
.end method

.method public static getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil$KAUHolder;->kauInstance:Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    return-object v0
.end method


# virtual methods
.method public getContactGroupAccountNameAndType(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 191
    const-string v1, ""

    .line 192
    const-string v0, ""

    .line 193
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 194
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 195
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    const-string v6, "galaxy nexus"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    if-lt v5, v4, :cond_0

    .line 197
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 199
    array-length v5, v4

    if-lez v5, :cond_0

    .line 200
    aget-object v0, v4, v7

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v2, v7

    .line 201
    aget-object v0, v4, v7

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v2, v8

    move-object v0, v2

    .line 223
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const-string v4, "samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    const-string v4, "samsng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 206
    :cond_1
    const-string/jumbo v1, "vnd.sec.contact.phone"

    .line 207
    const-string/jumbo v0, "vnd.sec.contact.phone"

    .line 221
    :cond_2
    :goto_1
    aput-object v1, v2, v7

    .line 222
    aput-object v0, v2, v8

    move-object v0, v2

    .line 223
    goto :goto_0

    .line 208
    :cond_3
    const-string v4, "htc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 209
    const-string v1, "pcsc"

    .line 210
    const-string v0, "com.htc.android.pcsc"

    goto :goto_1

    .line 211
    :cond_4
    const-string v4, "sony ericsson"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    .line 212
    const-string v1, "Phone contacts"

    .line 213
    const-string v0, "com.sonyericsson.localcontacts"

    goto :goto_1

    .line 214
    :cond_5
    const-string/jumbo v4, "zte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6

    .line 215
    const-string v1, "local@ztespecial_local.com"

    .line 216
    const-string/jumbo v0, "ztespecial_local.com"

    goto :goto_1

    .line 217
    :cond_6
    const-string v4, "moto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 218
    const-string v1, "phone-contacts"

    .line 219
    const-string v0, "com.contacts.phone"

    goto :goto_1
.end method

.method public getContactGroupUri(J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 233
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimIMEIInfoMethod(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 146
    sget-object v3, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    sget-object v4, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    sget-object v4, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMEIPos:[I

    aget v4, v4, v0

    invoke-interface {v3, v4, p1}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;->getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method public getDualSimIMEIInfoNormalMethod(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 162
    new-array v4, v9, [Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->CommonIMEIPos:[I

    array-length v5, v0

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_1

    if-ge v1, v9, :cond_1

    .line 168
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    array-length v6, v0

    move v0, v2

    .line 169
    :goto_1
    if-ge v0, v6, :cond_2

    .line 171
    sget-object v7, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    aget-object v7, v7, v0

    sget-object v8, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->CommonIMEIPos:[I

    aget v8, v8, v3

    invoke-interface {v7, v8, p1}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;->getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 173
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 176
    add-int/lit8 v0, v1, 0x1

    aput-object v7, v4, v1

    .line 166
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_1
    return-object v4

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getDualSimIMSIInfoMethod(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 92
    sget-object v3, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    sget-object v4, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    sget-object v4, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMSISimPos:[I

    aget v4, v4, v0

    invoke-interface {v3, v4, p1}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;->getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-object v1
.end method

.method public getDualSimIMSIInfoNormalMethod(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    .line 110
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 112
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    array-length v5, v0

    move v0, v1

    .line 113
    :goto_1
    if-ge v0, v5, :cond_0

    .line 115
    sget-object v6, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->allDualSimInfo:[Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;

    aget-object v6, v6, v0

    sget-object v7, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMSISimPos:[I

    aget v7, v7, v2

    invoke-interface {v6, v7, p1}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;->getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 117
    aget-object v6, v3, v2

    if-eqz v6, :cond_1

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    return-object v3
.end method

.method public getHasShortcutUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "gt-i9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v0, "content://com.sec.android.app.launcher.settings/favorites?notify=true"

    .line 70
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const-string v1, "mi 1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "content://com.miui.home.launcher.settings/favorites?notify=true"

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "content://com.android.launcher.settings/favorites?notify=true"

    goto :goto_0
.end method

.method public getNotSupportBluetoothInAirplaneMode(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_1

    .line 247
    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 249
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 247
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
