.class final Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "ApolloVoiceDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 396
    const-string v2, ""

    .line 398
    .local v2, "info":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 399
    const-string v5, "android.bluetooth.profile.extra.STATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 400
    .local v3, "state":I
    if-ne v3, v9, :cond_4

    .line 401
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bluetooth connect ,cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 403
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 404
    const/16 v5, 0x15

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 405
    const-string v2, "bluetooth headset connect"

    .line 406
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V

    .line 417
    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$402(Z)Z

    .line 418
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$500()Z

    move-result v5

    if-nez v5, :cond_1

    .line 419
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$300()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetDeviceConnection(I)V

    .line 498
    .end local v3    # "state":I
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 500
    .local v0, "blueState":I
    if-ne v10, v0, :cond_3

    .line 501
    const-string v5, "apolloVoice"

    const-string v6, "bluetooth turn off,bluetooth disconnect,"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 503
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 504
    const-string v2, "bluetooth turn off,bluetooth headset disconnect"

    .line 505
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V

    .line 506
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$500()Z

    move-result v5

    if-nez v5, :cond_2

    .line 507
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$300()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetDeviceConnection(I)V

    .line 514
    .end local v0    # "blueState":I
    :cond_2
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1100()Lcom/tencent/apollo/AudioDeviceListener;

    move-result-object v5

    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$300()I

    move-result v6

    invoke-interface {v5, v6, v2}, Lcom/tencent/apollo/AudioDeviceListener;->onStatus(ILjava/lang/String;)V

    .line 515
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 516
    const-string v2, ""

    .line 520
    :cond_3
    :goto_2
    return-void

    .line 407
    .restart local v3    # "state":I
    :cond_4
    if-nez v3, :cond_5

    .line 408
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bluetooth disconnect,cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 410
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 411
    const-string v2, "bluetooth headset disconnect"

    .line 412
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 517
    .end local v3    # "state":I
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 413
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "state":I
    :cond_5
    if-ne v3, v8, :cond_0

    .line 414
    :try_start_1
    const-string v5, "apolloVoice"

    const-string v6, "bluetoothHeadset connecting..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 424
    .end local v3    # "state":I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 425
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 426
    const-string v5, "state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 427
    .restart local v3    # "state":I
    packed-switch v3, :pswitch_data_0

    .line 475
    :cond_7
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver ACTION_HEADSET_PLUG onReceive bSetValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "strText":Ljava/lang/String;
    const-string v5, "framework"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v3    # "state":I
    .end local v4    # "strText":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$402(Z)Z

    .line 479
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$100()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$500()Z

    move-result v5

    if-nez v5, :cond_1

    .line 480
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$300()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetDeviceConnection(I)V

    goto/16 :goto_1

    .line 429
    .restart local v3    # "state":I
    :pswitch_0
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "headset disconnect ,cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 431
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 432
    const-string v2, "headset disconnect"

    .line 433
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$400()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_b

    .line 435
    :try_start_2
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$600()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-nez v5, :cond_9

    .line 436
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$602(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 437
    :cond_9
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$600()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    if-eq v9, v5, :cond_a

    .line 438
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$600()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    if-ne v9, v5, :cond_c

    .line 439
    :cond_a
    const/16 v5, 0x15

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 440
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 441
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 442
    const-string v2, "bluetooth headset connect"

    .line 443
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetStatus:bluetooth headset connect,cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 455
    :cond_b
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$100()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 456
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 445
    :cond_c
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 446
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 447
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 448
    const-string v2, "no any devices is connected"

    .line 449
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no device,cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 451
    :catch_1
    move-exception v1

    .line 452
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Z

    move-result v5

    if-nez v5, :cond_7

    .line 459
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetHeadSetState(Z)V

    goto/16 :goto_3

    .line 465
    :pswitch_1
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "headset connect ,cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$202(Z)Z

    .line 467
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 468
    const/16 v5, 0xb

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$302(I)I

    .line 469
    const-string v2, "headset connect"

    .line 470
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetHeadSetState(Z)V

    goto/16 :goto_3

    .line 483
    .end local v3    # "state":I
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 486
    .restart local v3    # "state":I
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApolloVoiceDeviceManager ::SCO cur state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {v3}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$702(I)I

    .line 488
    if-ne v3, v8, :cond_f

    .line 489
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$802(Z)Z

    .line 490
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$902(I)I

    goto/16 :goto_2

    .line 491
    :cond_f
    if-nez v3, :cond_3

    .line 492
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$802(Z)Z

    .line 493
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1000()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
