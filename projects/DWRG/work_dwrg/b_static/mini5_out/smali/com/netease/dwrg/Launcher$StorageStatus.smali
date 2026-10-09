.class Lcom/netease/dwrg/Launcher$StorageStatus;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageStatus"
.end annotation


# instance fields
.field public AvailableSize:J

.field public Path:Ljava/lang/String;

.field public Type:I

.field public UIString:Ljava/lang/String;

.field private m_context:Lcom/netease/dwrg/Launcher;

.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/Launcher;Lcom/netease/dwrg/Launcher;I)V
    .locals 2

    .line 196
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    .line 198
    iput p3, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->Type:I

    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_0
    const-string p1, "neox_launcher_data_sd"

    invoke-static {p2, p1}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_1
    const-string p1, "neox_launcher_external_sd"

    invoke-static {p2, p1}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_2
    const-string p1, "neox_launcher_internal_sd"

    invoke-static {p2, p1}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    :goto_0
    return-void
.end method
