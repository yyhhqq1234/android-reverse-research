.class Lcom/netease/neox/PluginMedia$MyTranscodeThread;
.super Ljava/lang/Thread;
.source "PluginMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/neox/PluginMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTranscodeThread"
.end annotation


# instance fields
.field private m_bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/netease/neox/PluginMedia;


# direct methods
.method public constructor <init>(Lcom/netease/neox/PluginMedia;Landroid/os/Bundle;)V
    .locals 1

    .line 486
    iput-object p1, p0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 487
    iput-object p2, p0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    .line 488
    const-string p1, "TaskID"

    invoke-static {}, Lcom/netease/neox/PluginMedia;->access$804()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 492
    new-instance v11, Lcom/netease/neox/PluginMedia$MyTranscodeCallback;

    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->this$0:Lcom/netease/neox/PluginMedia;

    iget-object v2, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-direct {v11, v1, v2}, Lcom/netease/neox/PluginMedia$MyTranscodeCallback;-><init>(Lcom/netease/neox/PluginMedia;Landroid/os/Bundle;)V

    .line 493
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v2, "InputPath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 494
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v2, "OutputPath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 495
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v2, "StartTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 496
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v2, "DurationLimit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    .line 497
    iget-object v3, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v5, "BitRate"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 498
    iget-object v3, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v5, "OutputWidth"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 499
    iget-object v6, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v7, "OutputHeight"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 500
    iget-object v8, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v10, "KeepAspect"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 501
    iget-object v10, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v14, "Rotate"

    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v14, 0x1

    if-eq v10, v14, :cond_2

    const/4 v15, 0x2

    if-eq v10, v15, :cond_1

    const/4 v15, 0x3

    if-eq v10, v15, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    const/16 v10, 0x10e

    goto :goto_0

    :cond_1
    const/16 v10, 0xb4

    goto :goto_0

    :cond_2
    const/16 v10, 0x5a

    :goto_0
    if-eq v4, v1, :cond_4

    if-eqz v3, :cond_4

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    move v7, v6

    move/from16 v18, v10

    move-object/from16 v17, v11

    :goto_1
    move v6, v3

    goto/16 :goto_4

    .line 518
    :cond_4
    :goto_2
    iget-object v15, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-virtual {v15, v12}, Lcom/netease/neox/PluginMedia;->retrieveVideoInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    if-nez v15, :cond_5

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieve video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 521
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->nativeOnTranscodeVideoDone(Landroid/os/Bundle;)V

    return-void

    :cond_5
    if-ne v4, v1, :cond_7

    .line 525
    const-string v1, "Duration"

    move/from16 v18, v10

    move-object/from16 v17, v11

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v1, v10

    if-lt v4, v1, :cond_6

    .line 528
    const-string v1, "Start time exceeds duration time"

    invoke-static {v1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 529
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->nativeOnTranscodeVideoDone(Landroid/os/Bundle;)V

    return-void

    .line 532
    :cond_6
    iget-object v10, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    sub-int v11, v1, v4

    invoke-virtual {v10, v2, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    move/from16 v18, v10

    move-object/from16 v17, v11

    :goto_3
    if-nez v3, :cond_8

    .line 535
    const-string v2, "Width"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 536
    iget-object v2, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    if-nez v6, :cond_9

    .line 539
    const-string v2, "Height"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 540
    iget-object v5, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v5, v1

    move v7, v2

    goto :goto_1

    :cond_9
    move v5, v1

    move v7, v6

    goto :goto_1

    .line 545
    :goto_4
    new-instance v15, Lcom/netease/cc/transcode/Transcode;

    invoke-direct {v15}, Lcom/netease/cc/transcode/Transcode;-><init>()V

    if-eqz v13, :cond_a

    .line 546
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    move-object v1, v15

    move-object v2, v12

    move-object v3, v13

    move/from16 v10, v18

    move-object/from16 v11, v17

    .line 547
    invoke-virtual/range {v1 .. v11}, Lcom/netease/cc/transcode/Transcode;->transcodeFile(Ljava/lang/String;Ljava/lang/String;IIIIZIILcom/netease/cc/transcode/Transcode$TranscodeCallBack;)I

    move-result v1

    move/from16 v16, v1

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    :goto_5
    if-nez v16, :cond_d

    .line 551
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v2, "ThumbnailPath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 553
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    move-object v12, v13

    :cond_b
    invoke-virtual {v15, v12, v1}, Lcom/netease/cc/transcode/Transcode;->createVideoSnapShot(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_c

    .line 555
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 556
    :cond_c
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_d

    .line 557
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    const-string v2, "IsSuccessful"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->m_bundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->nativeOnTranscodeVideoDone(Landroid/os/Bundle;)V

    return-void
.end method
