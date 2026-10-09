.class public Lcom/tencent/apollo/ApolloVoiceNetStatus;
.super Ljava/lang/Object;
.source "ApolloVoiceNetStatus.java"


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static UNKNOWN:Ljava/lang/String;

.field private static mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "ApolloVoice"

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceNetStatus;->LOGTAG:Ljava/lang/String;

    .line 11
    const-string v0, "Unknown"

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Net()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 20
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    .line 21
    .local v3, "type":Ljava/lang/String;
    sget-object v4, Lcom/tencent/apollo/ApolloVoiceNetStatus;->mainContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 22
    sget-object v4, Lcom/tencent/apollo/ApolloVoiceNetStatus;->LOGTAG:Ljava/lang/String;

    const-string v5, "mainContext is null .May init java first"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-object v3

    .line 25
    :cond_0
    sget-object v4, Lcom/tencent/apollo/ApolloVoiceNetStatus;->mainContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 27
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 32
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_3

    .line 33
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceNetStatus;->UNKNOWN:Ljava/lang/String;

    .line 49
    :cond_2
    :goto_1
    sget-object v4, Lcom/tencent/apollo/ApolloVoiceNetStatus;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android Java Get Net status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 35
    const-string v3, "WiFi"

    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 37
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 38
    .local v2, "subType":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    if-ne v2, v6, :cond_6

    .line 40
    :cond_5
    const-string v3, "2G"

    goto :goto_1

    .line 41
    :cond_6
    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    const/16 v4, 0x8

    if-eq v2, v4, :cond_7

    const/4 v4, 0x6

    if-eq v2, v4, :cond_7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_7

    const/16 v4, 0xc

    if-ne v2, v4, :cond_8

    .line 44
    :cond_7
    const-string v3, "3G"

    goto :goto_1

    .line 45
    :cond_8
    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 46
    const-string v3, "4G"

    goto :goto_1
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 16
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceNetStatus;->mainContext:Landroid/content/Context;

    .line 17
    return-void
.end method
