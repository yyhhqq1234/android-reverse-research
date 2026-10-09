.class Lcom/netease/dwrg/Launcher$AssetInfo;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssetInfo"
.end annotation


# instance fields
.field public MD5:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Size:J

.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/Launcher;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$AssetInfo;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/netease/dwrg/Launcher$AssetInfo;->Path:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/netease/dwrg/Launcher$AssetInfo;->MD5:Ljava/lang/String;

    .line 143
    iput-wide p4, p0, Lcom/netease/dwrg/Launcher$AssetInfo;->Size:J

    return-void
.end method
