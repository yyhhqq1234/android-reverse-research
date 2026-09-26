.class public Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
.super Ljava/lang/Object;
.source "NetAreaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/location/NetAreaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetAreaInfoUnit"
.end annotation


# instance fields
.field public mKey:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/pharos/location/NetAreaInfo;


# direct methods
.method public constructor <init>(Lcom/netease/pharos/location/NetAreaInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 322
    iput-object p1, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->this$0:Lcom/netease/pharos/location/NetAreaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mKey:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mValue:Ljava/lang/String;

    .line 323
    iput-object p2, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mKey:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mValue:Ljava/lang/String;

    .line 325
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
