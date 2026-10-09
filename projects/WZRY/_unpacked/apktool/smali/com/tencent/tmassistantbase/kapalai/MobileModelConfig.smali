.class public Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig;


# static fields
.field private static mInstance:Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->mInstance:Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->mInstance:Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->mInstance:Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->mInstance:Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1007
    const-string v0, "_"

    .line 1008
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1010
    const-string v2, "[-\\s]"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    return-object v0
.end method


# virtual methods
.method public updateAlpsConfig(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    .line 526
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->f:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_0
    return-void

    .line 533
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 534
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 535
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 539
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 540
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 541
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 545
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 546
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 547
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateBBKConfig(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 735
    .line 737
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$BBK;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$BBK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 741
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->i:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$BBK;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 827
    :goto_0
    return-void

    .line 744
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 745
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 746
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 750
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 751
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 752
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 756
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 757
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 758
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 762
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 763
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 764
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 768
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDeleteContactGroup:Z

    .line 769
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 770
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 771
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 775
    :pswitch_5
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDeleteContactGroup:Z

    .line 776
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 777
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 778
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 782
    :pswitch_6
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 783
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 784
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 788
    :pswitch_7
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 789
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 790
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 794
    :pswitch_8
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 795
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 796
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 800
    :pswitch_9
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDeleteContactGroup:Z

    .line 801
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 802
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 803
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 807
    :pswitch_a
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDeleteContactGroup:Z

    .line 808
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 809
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 810
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 814
    :pswitch_b
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 815
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 816
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 820
    :pswitch_c
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 821
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 822
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 738
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public updateCoolpadConfig(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 575
    .line 577
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$COOLPAD;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$COOLPAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->g:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$COOLPAD;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 639
    :goto_0
    return-void

    .line 584
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 585
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 586
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 590
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 591
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v2

    .line 592
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 596
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 597
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 598
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 602
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 603
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 604
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 608
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 609
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 610
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 614
    :pswitch_5
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 615
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v2

    .line 616
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 620
    :pswitch_6
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 621
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 622
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 626
    :pswitch_7
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 627
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 628
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 632
    :pswitch_8
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 633
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 634
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    const/4 v1, 0x6

    aput v1, v0, v3

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public updateGioneeConfig(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 941
    .line 943
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$GIONEE;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$GIONEE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 948
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->l:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$GIONEE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 964
    :goto_0
    return-void

    .line 951
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 952
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 953
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 957
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 958
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 959
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    goto :goto_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateHisenseConfig(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 462
    .line 464
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HISENSE;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HISENSE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateHtcConfig(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    .line 263
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HTC;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HTC;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->b:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HTC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 274
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportInsertContactGroup:Z

    goto :goto_0

    .line 277
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportInsertContactGroup:Z

    .line 278
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 279
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 280
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 281
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    .line 282
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 283
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v3

    .line 284
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMEIPos:[I

    aput v2, v0, v3

    goto :goto_0

    .line 288
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 289
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 290
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v3

    .line 291
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMEIPos:[I

    aput v2, v0, v3

    goto :goto_0

    .line 295
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportInsertContactGroup:Z

    .line 296
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 297
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v5, v0, v2

    .line 298
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v3

    .line 299
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMEIPos:[I

    aput v2, v0, v3

    goto :goto_0

    .line 303
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 304
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v5, v0, v2

    .line 305
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v3

    .line 306
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMEIPos:[I

    aput v2, v0, v3

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateHuaWeiConfig(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    .line 332
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HUAWEI;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HUAWEI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 336
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->c:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$HUAWEI;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 339
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 340
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 341
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 345
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 346
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 347
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 351
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 352
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 353
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 357
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 358
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 359
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 363
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 364
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 365
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 369
    :pswitch_5
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 370
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 371
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 375
    :pswitch_6
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 376
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 377
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 381
    :pswitch_7
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 382
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 383
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 387
    :pswitch_8
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 388
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 389
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto :goto_0

    .line 393
    :pswitch_9
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 394
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 395
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto :goto_0

    .line 399
    :pswitch_a
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 400
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 401
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 405
    :pswitch_b
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 406
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 407
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto/16 :goto_0

    .line 411
    :pswitch_c
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 412
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 413
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 417
    :pswitch_d
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 418
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 419
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto/16 :goto_0

    .line 423
    :pswitch_e
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 424
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 425
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto/16 :goto_0

    .line 429
    :pswitch_f
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 430
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 431
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public updateK_TouchConfig(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 558
    .line 560
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$K_TOUCH;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$K_TOUCH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateLenovoConfig(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    .line 648
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$LENOVO;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$LENOVO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 653
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->h:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$LENOVO;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 729
    :goto_0
    return-void

    .line 656
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 657
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v2

    .line 658
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 662
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 663
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 664
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 668
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 669
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 670
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 674
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 675
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 676
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 680
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 681
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 682
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 686
    :pswitch_5
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 687
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 688
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 692
    :pswitch_6
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 693
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v2

    .line 694
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 698
    :pswitch_7
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 699
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 700
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 704
    :pswitch_8
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 705
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 706
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 710
    :pswitch_9
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 711
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 712
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 716
    :pswitch_a
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 717
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 718
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 722
    :pswitch_b
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 723
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 724
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto/16 :goto_0

    .line 649
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public updateMeizuConfig(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 511
    .line 513
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateMotorolaConfig(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 317
    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MOTOROLA;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MOTOROLA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateOppoConfig(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 862
    .line 864
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$OPPO;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$OPPO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 868
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->k:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$OPPO;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 932
    :goto_0
    return-void

    .line 871
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 872
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 873
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 877
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 878
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 879
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 883
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 884
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 885
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 889
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 890
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 891
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 895
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 896
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 897
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 901
    :pswitch_5
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 902
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 903
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 907
    :pswitch_6
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 908
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 909
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 913
    :pswitch_7
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 914
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 915
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 919
    :pswitch_8
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 920
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 921
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 925
    :pswitch_9
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 926
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 927
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    goto :goto_0

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public updateOtherPhoneConfig(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 998
    .line 1000
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$OTHERPHONE;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$OTHERPHONE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSamSungConfig(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    .line 50
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SAMSUNG;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SAMSUNG;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->a:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SAMSUNG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 57
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 58
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 59
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto :goto_0

    .line 63
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 64
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 65
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto :goto_0

    .line 69
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 70
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 71
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto :goto_0

    .line 75
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 76
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 77
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 78
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 79
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v2

    .line 80
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 84
    :pswitch_4
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 85
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 86
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 87
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 88
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 89
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 93
    :pswitch_5
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 94
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 95
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 96
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 97
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 98
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto :goto_0

    .line 102
    :pswitch_6
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 103
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 104
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    const/4 v1, 0x5

    aput v1, v0, v3

    goto :goto_0

    .line 108
    :pswitch_7
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 109
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 110
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 111
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 112
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 113
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 117
    :pswitch_8
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 118
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 119
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 123
    :pswitch_9
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 124
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 125
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 129
    :pswitch_a
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 130
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 131
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 132
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 133
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 134
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 139
    :pswitch_b
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 140
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 141
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 142
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 143
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 144
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 148
    :pswitch_c
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 149
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 150
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 151
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 152
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 153
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 157
    :pswitch_d
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 158
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 159
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 160
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 161
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 162
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 166
    :pswitch_e
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 167
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 168
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 169
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 170
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 171
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 175
    :pswitch_f
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 176
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 177
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 181
    :pswitch_10
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 182
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 183
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 184
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 185
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 186
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 190
    :pswitch_11
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 191
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 192
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 196
    :pswitch_12
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 197
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 198
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto/16 :goto_0

    .line 202
    :pswitch_13
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 203
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 204
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 208
    :pswitch_14
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 209
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 210
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 214
    :pswitch_15
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 215
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 216
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 217
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 218
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 219
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 223
    :pswitch_16
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 224
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 225
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 226
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v3

    .line 227
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 228
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 232
    :pswitch_17
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 233
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 234
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v5, v0, v3

    goto/16 :goto_0

    .line 237
    :pswitch_18
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 238
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 239
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 242
    :pswitch_19
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 243
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 244
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 247
    :pswitch_1a
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 248
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v4, v0, v2

    .line 249
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 51
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public updateSonyConfig(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 833
    .line 835
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 839
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->j:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 854
    :goto_0
    return-void

    .line 842
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 843
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 844
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 849
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportInsertContactGroup:Z

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    goto :goto_0

    .line 839
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateXiaomiConfig(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    .line 476
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 480
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->e:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 505
    :goto_0
    return-void

    .line 482
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isHasShortcutUri:Z

    goto :goto_0

    .line 486
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 487
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 488
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 492
    :pswitch_2
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 493
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v2

    .line 494
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v4, v0, v3

    goto :goto_0

    .line 498
    :pswitch_3
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 499
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 500
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v3, v0, v3

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateYulongConfig(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 969
    .line 971
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$YULONG;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$YULONG;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 975
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->m:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$YULONG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 992
    :goto_0
    return-void

    .line 980
    :pswitch_0
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDeleteContactGroup:Z

    goto :goto_0

    .line 983
    :pswitch_1
    sput-boolean v2, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 984
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    aput v2, v0, v2

    .line 985
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    const/4 v1, 0x1

    const/4 v2, 0x6

    aput v2, v0, v1

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateZteConfig(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 442
    .line 444
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->transformToUnderLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 449
    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig$1;->d:[I

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_0
    return-void

    .line 451
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportInsertContactGroup:Z

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
