.class public Lcom/tencent/pandora/livepusher/LiveVideo;
.super Ljava/lang/Object;
.source "LiveVideo.java"

# interfaces
.implements Lcom/tencent/rtmp1/ITXLivePushListener;


# static fields
.field private static s_callbackMethodName:Ljava/lang/String;

.field private static s_callbackObjectName:Ljava/lang/String;

.field private static s_dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static s_liveVideo:Lcom/tencent/pandora/livepusher/LiveVideo;

.field private static s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

.field private static s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

.field private static s_screenCapture:Lcom/tencent/pandora/livepusher/ScreenCapture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    .line 25
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    .line 26
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    .line 27
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_liveVideo:Lcom/tencent/pandora/livepusher/LiveVideo;

    .line 29
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_screenCapture:Lcom/tencent/pandora/livepusher/ScreenCapture;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackObjectName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackMethodName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pandora_live_init_push()V
    .locals 21

    .prologue
    .line 37
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v19, :cond_0

    .line 39
    new-instance v19, Lcom/tencent/rtmp1/TXLivePusher;

    sget-object v20, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePusher;-><init>(Landroid/content/Context;)V

    sput-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    .line 40
    new-instance v19, Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/rtmp1/TXLivePushConfig;-><init>()V

    sput-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    .line 45
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "beautyFilterDepth"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 46
    .local v11, "temp":Ljava/lang/Integer;
    if-nez v11, :cond_1

    const/4 v3, 0x5

    .line 47
    .local v3, "beautyLvl":I
    :goto_0
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "whiteningFilterDepth"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 48
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_2

    const/16 v18, 0x5

    .line 49
    .local v18, "whiteLvl":I
    :goto_1
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setBeautyFilter(III)V

    .line 51
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "videoFPS"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 52
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_3

    const/16 v15, 0x1e

    .line 53
    .local v15, "videoFPS":I
    :goto_2
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoFPS(I)V

    .line 56
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "videoBitratePIN"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 57
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_4

    const/16 v14, 0x4b0

    .line 58
    .local v14, "videoBitratePIN":I
    :goto_3
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 61
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "videoBitrateMin"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 62
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_5

    const/16 v13, 0x320

    .line 63
    .local v13, "videoBitrateMin":I
    :goto_4
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 65
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "videoBitrateMax"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 66
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_6

    const/16 v12, 0x7d0

    .line 67
    .local v12, "videoBitrateMax":I
    :goto_5
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    .line 70
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "enableAutoBitrate"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 71
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_7

    const/4 v6, 0x1

    .line 72
    .local v6, "enableAutoBitrate":I
    :goto_6
    if-lez v6, :cond_8

    const/4 v4, 0x1

    .line 73
    .local v4, "enable":Z
    :goto_7
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 75
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "enableCaptureAutoRotate"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 76
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_9

    const/4 v7, 0x1

    .line 77
    .local v7, "enableCaptureAutoRotate":I
    :goto_8
    if-lez v7, :cond_a

    const/4 v4, 0x1

    .line 78
    :goto_9
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableScreenCaptureAutoRotate(Z)V

    .line 80
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "pauseFps"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 81
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_b

    const/16 v9, 0xa

    .line 82
    .local v9, "pauseFps":I
    :goto_a
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "pauseTime"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 83
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_c

    const/16 v10, 0x12c

    .line 84
    .local v10, "pauseTime":I
    :goto_b
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v9}, Lcom/tencent/rtmp1/TXLivePushConfig;->setPauseImg(II)V

    .line 86
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "videoWidth"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 87
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_d

    const/16 v17, 0x500

    .line 88
    .local v17, "videoWidth":I
    :goto_c
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string/jumbo v20, "videoHeight"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 89
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_e

    const/16 v16, 0x2d0

    .line 91
    .local v16, "videoHeight":I
    :goto_d
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_11

    .line 93
    const/16 v19, 0x280

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    .line 94
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 110
    :goto_e
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "hardwareAcceleration"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 111
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_14

    const/4 v8, 0x2

    .line 112
    .local v8, "hardwareAcceleration":I
    :goto_f
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_15

    .line 113
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 120
    :goto_10
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    const-string v20, "enableAEC"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "temp":Ljava/lang/Integer;
    check-cast v11, Ljava/lang/Integer;

    .line 121
    .restart local v11    # "temp":Ljava/lang/Integer;
    if-nez v11, :cond_17

    const/4 v5, 0x0

    .line 122
    .local v5, "enableAEC":I
    :goto_11
    if-lez v5, :cond_18

    const/4 v4, 0x1

    .line 123
    :goto_12
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 127
    :cond_0
    return-void

    .line 46
    .end local v3    # "beautyLvl":I
    .end local v4    # "enable":Z
    .end local v5    # "enableAEC":I
    .end local v6    # "enableAutoBitrate":I
    .end local v7    # "enableCaptureAutoRotate":I
    .end local v8    # "hardwareAcceleration":I
    .end local v9    # "pauseFps":I
    .end local v10    # "pauseTime":I
    .end local v12    # "videoBitrateMax":I
    .end local v13    # "videoBitrateMin":I
    .end local v14    # "videoBitratePIN":I
    .end local v15    # "videoFPS":I
    .end local v16    # "videoHeight":I
    .end local v17    # "videoWidth":I
    .end local v18    # "whiteLvl":I
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_0

    .line 48
    .restart local v3    # "beautyLvl":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto/16 :goto_1

    .line 52
    .restart local v18    # "whiteLvl":I
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_2

    .line 57
    .restart local v15    # "videoFPS":I
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto/16 :goto_3

    .line 62
    .restart local v14    # "videoBitratePIN":I
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto/16 :goto_4

    .line 66
    .restart local v13    # "videoBitrateMin":I
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto/16 :goto_5

    .line 71
    .restart local v12    # "videoBitrateMax":I
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_6

    .line 72
    .restart local v6    # "enableAutoBitrate":I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 76
    .restart local v4    # "enable":Z
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_8

    .line 77
    .restart local v7    # "enableCaptureAutoRotate":I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 81
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_a

    .line 83
    .restart local v9    # "pauseFps":I
    :cond_c
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_b

    .line 87
    .restart local v10    # "pauseTime":I
    :cond_d
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_c

    .line 89
    .restart local v17    # "videoWidth":I
    :cond_e
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_d

    .line 95
    .restart local v16    # "videoHeight":I
    :cond_f
    const/16 v19, 0x3c0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_10

    .line 96
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    goto/16 :goto_e

    .line 98
    :cond_10
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    goto/16 :goto_e

    .line 102
    :cond_11
    const/16 v19, 0x280

    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    .line 103
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    goto/16 :goto_e

    .line 104
    :cond_12
    const/16 v19, 0x3c0

    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_13

    .line 105
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    goto/16 :goto_e

    .line 107
    :cond_13
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    goto/16 :goto_e

    .line 111
    :cond_14
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_f

    .line 114
    .restart local v8    # "hardwareAcceleration":I
    :cond_15
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_16

    .line 115
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    goto/16 :goto_10

    .line 117
    :cond_16
    sget-object v19, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    goto/16 :goto_10

    .line 121
    :cond_17
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_11

    .line 122
    .restart local v5    # "enableAEC":I
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_12
.end method

.method public static pandora_live_is_publishing()Z
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePusher;->isPushing()Z

    move-result v0

    goto :goto_0
.end method

.method public static pandora_live_pause_push()V
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePusher;->pausePusher()V

    goto :goto_0
.end method

.method public static pandora_live_resume_push()V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePusher;->resumePusher()V

    goto :goto_0
.end method

.method public static pandora_live_set_option(Ljava/lang/String;I)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 200
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    .line 203
    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public static pandora_live_start_push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "objectName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "pandora"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pandora_live_start_push:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/tencent/pandora/livepusher/LiveVideo;->pandora_live_init_push()V

    .line 182
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_liveVideo:Lcom/tencent/pandora/livepusher/LiveVideo;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Lcom/tencent/pandora/livepusher/LiveVideo;

    invoke-direct {v0}, Lcom/tencent/pandora/livepusher/LiveVideo;-><init>()V

    sput-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_liveVideo:Lcom/tencent/pandora/livepusher/LiveVideo;

    .line 189
    :cond_1
    sput-object p1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackObjectName:Ljava/lang/String;

    .line 190
    sput-object p2, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackMethodName:Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    sget-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_liveVideo:Lcom/tencent/pandora/livepusher/LiveVideo;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/TXLivePusher;->setPushListener(Lcom/tencent/rtmp1/ITXLivePushListener;)V

    .line 193
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    sget-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/TXLivePusher;->setConfig(Lcom/tencent/rtmp1/TXLivePushConfig;)V

    .line 194
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePusher;->startScreenCapture()V

    .line 195
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/TXLivePusher;->startPusher(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pandora_live_start_record(Ljava/lang/String;IIII)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "encodingBitRate"    # I

    .prologue
    .line 145
    const-string v0, "pandora"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pandora_live_start_record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), frameRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encodingBitRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "pandora"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 149
    const-string v0, "pandora"

    const-string/jumbo v1, "\u7cfb\u7edf\u7248\u672c\u4f4e\u4e8e5.0\uff0c\u4e0d\u652f\u6301\u5f55\u5c4f\u529f\u80fd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v0, 0x2328

    const-string/jumbo v1, "\u7cfb\u7edf\u7248\u672c\u4f4e\u4e8e5.0\uff0c\u4e0d\u652f\u6301\u5f55\u5c4f\u529f\u80fd"

    invoke-static {v0, v1}, Lcom/tencent/pandora/livepusher/LiveVideo;->pandora_send_unity_message(ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/pandora/livepusher/LiveVideo;->startCapture(Ljava/lang/String;IIII)V

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pandora_live_stop_push()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePusher;->startScreenCapture()V

    .line 228
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/TXLivePusher;->setPushListener(Lcom/tencent/rtmp1/ITXLivePushListener;)V

    .line 230
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePusher;->stopPusher()V

    .line 232
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    .line 233
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pushConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    .line 234
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_liveVideo:Lcom/tencent/pandora/livepusher/LiveVideo;

    .line 235
    sput-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_dataMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static pandora_live_stop_record()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 172
    invoke-static {}, Lcom/tencent/pandora/livepusher/LiveVideo;->stopCapture()V

    goto :goto_0
.end method

.method public static pandora_send_unity_message(ILjava/lang/String;)V
    .locals 4
    .param p0, "event"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackObjectName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackMethodName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "pandora"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pandora_send_unity_message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public static pandora_set_mic_volume(F)V
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 252
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/tencent/pandora/livepusher/LiveVideo;->s_pandoraPusher:Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0, p0}, Lcom/tencent/rtmp1/TXLivePusher;->setMicVolume(F)Z

    goto :goto_0
.end method

.method public static startCapture(Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "encodingBitRate"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 132
    const-string v1, "pandora"

    const-string v2, "startCapture ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/tencent/pandora/livepusher/ScreenCapture;->getInstance()Lcom/tencent/pandora/livepusher/ScreenCapture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->setContext(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/tencent/pandora/livepusher/ScreenCapture;->getInstance()Lcom/tencent/pandora/livepusher/ScreenCapture;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tencent/pandora/livepusher/ScreenCapture;->setVideoSize(II)V

    .line 138
    invoke-static {}, Lcom/tencent/pandora/livepusher/ScreenCapture;->getInstance()Lcom/tencent/pandora/livepusher/ScreenCapture;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/tencent/pandora/livepusher/ScreenCapture;->setVideoEncodingBitRate(I)V

    .line 139
    invoke-static {}, Lcom/tencent/pandora/livepusher/ScreenCapture;->getInstance()Lcom/tencent/pandora/livepusher/ScreenCapture;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->startCapture(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static stopCapture()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 162
    const-string v0, "pandora"

    const-string v1, "stopCapture ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/tencent/pandora/livepusher/ScreenCapture;->getInstance()Lcom/tencent/pandora/livepusher/ScreenCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->stopCapture()V

    .line 164
    return-void
.end method


# virtual methods
.method public onNetStatus(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "status"    # Landroid/os/Bundle;

    .prologue
    .line 277
    const-string v0, "pandora"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current status, CPU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CPU_USAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RES:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIDEO_WIDTH"

    .line 278
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIDEO_HEIGHT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SPD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NET_SPEED"

    .line 279
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kbps, FPS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIDEO_FPS"

    .line 280
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ARA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUDIO_BITRATE"

    .line 281
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kbps, VRA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VIDEO_BITRATE"

    .line 282
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public onPushEvent(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "param"    # Landroid/os/Bundle;

    .prologue
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVT_MSG"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackObjectName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/pandora/livepusher/LiveVideo;->s_callbackMethodName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method
