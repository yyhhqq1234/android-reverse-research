.class public Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;
.super Ljava/lang/Object;
.source "SGameActivity.java"

# interfaces
.implements Lcom/tsf4g/apollo/report/ICrashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmgp/sgamece/SGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCrashNotify"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;->this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCrashExtMessageNotify()Ljava/lang/String;
    .locals 10

    .prologue
    .line 94
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    .local v5, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/tencent/tmgp/sgamece/SGameActivity$MyCrashNotify;->this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;

    invoke-virtual {v7}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/tmgp/sgamece/SGameUtility;->getExtraDatas(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 97
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v4, "logBuffer":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 101
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 113
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    sget-object v7, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 114
    const-string v2, ""

    .line 118
    .local v2, "gamecoreStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/tencent/tmgp/sgamece/SGameActivity;->SGameGameCoreCrashLog()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v7, "SGameActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "gamecoreStr "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 102
    .end local v2    # "gamecoreStr":Ljava/lang/String;
    .restart local v3    # "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "temp":Ljava/lang/String;
    const-string v7, "regInfos"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 122
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v6    # "temp":Ljava/lang/String;
    .restart local v2    # "gamecoreStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
