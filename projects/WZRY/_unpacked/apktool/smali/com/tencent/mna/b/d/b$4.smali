.class final Lcom/tencent/mna/b/d/b$4;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/MNAObserver;

.field final synthetic b:Lcom/tencent/mna/KartinRet;


# direct methods
.method constructor <init>(Lcom/tencent/mna/MNAObserver;Lcom/tencent/mna/KartinRet;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/tencent/mna/b/d/b$4;->a:Lcom/tencent/mna/MNAObserver;

    iput-object p2, p0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 206
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mna/b/d/b$4;->a:Lcom/tencent/mna/MNAObserver;

    if-eqz v1, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mna/b/d/b$4;->a:Lcom/tencent/mna/MNAObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->flag:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v4, v4, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v5, v5, Lcom/tencent/mna/KartinRet;->jump_network:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v6, v6, Lcom/tencent/mna/KartinRet;->jump_signal:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v7, v7, Lcom/tencent/mna/KartinRet;->jump_router:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v8, v8, Lcom/tencent/mna/KartinRet;->router_status:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v9, v9, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v10, v10, Lcom/tencent/mna/KartinRet;->jump_export:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v11, v11, Lcom/tencent/mna/KartinRet;->export_status:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v12, v12, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v13, v13, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v14, v14, Lcom/tencent/mna/KartinRet;->terminal_status:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v15, v15, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/mna/KartinRet;->jump_edge:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tencent/mna/KartinRet;->signal_status:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/tencent/mna/KartinRet;->direct_status:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/tencent/mna/KartinRet;->wifi_num:I

    move/from16 v25, v0

    invoke-interface/range {v1 .. v25}, Lcom/tencent/mna/MNAObserver;->OnQueryKartinNotify(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnQueryKartinNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_signal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->router_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->export_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->terminal_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_edge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->signal_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->direct_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget-object v2, v2, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mna/b/d/b$4;->b:Lcom/tencent/mna/KartinRet;

    iget v2, v2, Lcom/tencent/mna/KartinRet;->wifi_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
