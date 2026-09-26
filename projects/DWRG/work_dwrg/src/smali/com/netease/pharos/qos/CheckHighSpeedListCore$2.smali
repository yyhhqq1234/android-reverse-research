.class Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;
.super Ljava/lang/Object;
.source "CheckHighSpeedListCore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/qos/CheckHighSpeedListCore;->sort()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netease/pharos/config/CheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netease/pharos/config/CheckResult;Lcom/netease/pharos/config/CheckResult;)I
    .locals 5
    .param p1, "arg0"    # Lcom/netease/pharos/config/CheckResult;
    .param p2, "arg1"    # Lcom/netease/pharos/config/CheckResult;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "result":I
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 183
    const/4 v0, 0x1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 186
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/netease/pharos/config/CheckResult;

    check-cast p2, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {p0, p1, p2}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;->compare(Lcom/netease/pharos/config/CheckResult;Lcom/netease/pharos/config/CheckResult;)I

    move-result v0

    return v0
.end method
