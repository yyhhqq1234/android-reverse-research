.class final Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;
.super Ljava/lang/Object;
.source "DexLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/update/dex/DexLoader;->startCheck(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channelSdks1:Ljava/util/Collection;

.field final synthetic val$channelSdks2:Ljava/util/Collection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$inst:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic val$mac:Ljava/lang/String;

.field final synthetic val$udid:Ljava/lang/String;

.field final synthetic val$unibaseVer:Ljava/lang/String;

.field final synthetic val$unisubVer:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$inst:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$channelSdks1:Ljava/util/Collection;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$channelSdks2:Ljava/util/Collection;

    iput-object p5, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$gameId:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$unibaseVer:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$unisubVer:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$udid:Ljava/lang/String;

    iput-object p9, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$inst:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$channelSdks1:Ljava/util/Collection;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$channelSdks2:Ljava/util/Collection;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$gameId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$unibaseVer:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$unisubVer:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$udid:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;->val$mac:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->access$100(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method
