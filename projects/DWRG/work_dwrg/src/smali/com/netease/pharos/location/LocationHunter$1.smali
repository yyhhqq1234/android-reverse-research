.class Lcom/netease/pharos/location/LocationHunter$1;
.super Ljava/lang/Object;
.source "LocationHunter.java"

# interfaces
.implements Lcom/netease/pharos/link/LinkCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/location/LocationHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/location/LocationHunter;


# direct methods
.method constructor <init>(Lcom/netease/pharos/location/LocationHunter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/location/LocationHunter$1;->this$0:Lcom/netease/pharos/location/LocationHunter;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/config/CheckResult;)V
    .locals 3
    .param p1, "checkResult"    # Lcom/netease/pharos/config/CheckResult;

    .prologue
    .line 33
    const-string v0, "LocationHunter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationHunter \u56de\u8c03\u7ed3\u679c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/netease/pharos/location/RecheckResult;->getInstance()Lcom/netease/pharos/location/RecheckResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/location/RecheckResult;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
