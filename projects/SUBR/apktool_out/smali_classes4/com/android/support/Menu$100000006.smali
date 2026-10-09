.class Lcom/android/support/Menu$100000006;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I

.field private final val$switchR:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Ljava/lang/String;ILandroid/widget/Switch;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/android/support/Menu$100000006;->val$featName:Ljava/lang/String;

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/android/support/Menu$100000006;->val$featNum:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/android/support/Menu$100000006;->val$switchR:Landroid/widget/Switch;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000006;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->val$featName:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/android/support/Menu$100000006;->val$featNum:I

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    .line 612
    move-object v4, v0

    iget v4, v4, Lcom/android/support/Menu$100000006;->val$featNum:I

    packed-switch v4, :pswitch_data_0

    .line 777
    :goto_0
    :pswitch_0
    return-void

    .line 614
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->val$switchR:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v4

    const/4 v5, -0x1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    .line 615
    move v4, v2

    if-nez v4, :cond_0

    .line 616
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->val$switchR:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/support/Preferences;->clear()V

    .line 617
    :goto_1
    goto :goto_0

    .line 615
    :cond_0
    goto :goto_1

    .line 619
    :pswitch_2
    move v4, v2

    sput-boolean v4, Lcom/android/support/Preferences;->isExpanded:Z

    .line 620
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    goto :goto_0

    .line 620
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    .line 622
    :pswitch_3
    move v4, v2

    if-eqz v4, :cond_2

    .line 623
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 628
    :goto_3
    goto :goto_0

    .line 626
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 630
    :pswitch_4
    move v4, v2

    if-eqz v4, :cond_3

    .line 631
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    :goto_4
    goto :goto_0

    .line 634
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 638
    :pswitch_5
    move v4, v2

    if-eqz v4, :cond_4

    .line 639
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    :goto_5
    goto/16 :goto_0

    .line 642
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 646
    :pswitch_6
    move v4, v2

    if-eqz v4, :cond_5

    .line 647
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 652
    :goto_6
    goto/16 :goto_0

    .line 650
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 655
    :pswitch_7
    move v4, v2

    if-eqz v4, :cond_6

    .line 656
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    :goto_7
    goto/16 :goto_0

    .line 659
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 664
    :pswitch_8
    move v4, v2

    if-eqz v4, :cond_7

    .line 665
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 670
    :goto_8
    goto/16 :goto_0

    .line 668
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 673
    :pswitch_9
    move v4, v2

    if-eqz v4, :cond_8

    .line 674
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 679
    :goto_9
    goto/16 :goto_0

    .line 677
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 682
    :pswitch_a
    move v4, v2

    if-eqz v4, :cond_9

    .line 683
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 688
    :goto_a
    goto/16 :goto_0

    .line 686
    :cond_9
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 691
    :pswitch_b
    move v4, v2

    if-eqz v4, :cond_a

    .line 692
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    :goto_b
    goto/16 :goto_0

    .line 695
    :cond_a
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 699
    :pswitch_c
    move v4, v2

    if-eqz v4, :cond_b

    .line 700
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 705
    :goto_c
    goto/16 :goto_0

    .line 703
    :cond_b
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c

    .line 707
    :pswitch_d
    move v4, v2

    if-eqz v4, :cond_c

    .line 708
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 713
    :goto_d
    goto/16 :goto_0

    .line 711
    :cond_c
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    .line 715
    :pswitch_e
    move v4, v2

    if-eqz v4, :cond_d

    .line 716
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    :goto_e
    goto/16 :goto_0

    .line 719
    :cond_d
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e

    .line 723
    :pswitch_f
    move v4, v2

    if-eqz v4, :cond_e

    .line 724
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 729
    :goto_f
    goto/16 :goto_0

    .line 727
    :cond_e
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 731
    :pswitch_10
    move v4, v2

    if-eqz v4, :cond_f

    .line 732
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    :goto_10
    goto/16 :goto_0

    .line 735
    :cond_f
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    .line 739
    :pswitch_11
    move v4, v2

    if-eqz v4, :cond_10

    .line 740
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 745
    :goto_11
    goto/16 :goto_0

    .line 743
    :cond_10
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 747
    :pswitch_12
    move v4, v2

    if-eqz v4, :cond_11

    .line 748
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    :goto_12
    goto/16 :goto_0

    .line 751
    :cond_11
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_12

    .line 755
    :pswitch_13
    move v4, v2

    if-eqz v4, :cond_12

    .line 756
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    :goto_13
    goto/16 :goto_0

    .line 759
    :cond_12
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 763
    :pswitch_14
    move v4, v2

    if-eqz v4, :cond_13

    .line 764
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 769
    :goto_14
    goto/16 :goto_0

    .line 767
    :cond_13
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14

    .line 771
    :pswitch_15
    move v4, v2

    if-eqz v4, :cond_14

    .line 772
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Enable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    .line 777
    :goto_15
    goto/16 :goto_0

    .line 775
    :cond_14
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000006;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "[Disable]"

    invoke-static {v4, v5, v6}, Lcom/android/support/Menu;->access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_15

    .line 612
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
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
    .end packed-switch
.end method
