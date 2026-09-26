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
    .locals 3
    .param p1, "this$0"    # Lcom/netease/dwrg/Launcher;
    .param p2, "context"    # Lcom/netease/dwrg/Launcher;
    .param p3, "storage_type"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    .line 159
    iput p3, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->Type:I

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 161
    packed-switch p3, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    .line 176
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    const-string v2, "neox_launcher_internal_sd"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    const-string v2, "neox_launcher_external_sd"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->m_context:Lcom/netease/dwrg/Launcher;

    const-string v2, "neox_launcher_data_sd"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
