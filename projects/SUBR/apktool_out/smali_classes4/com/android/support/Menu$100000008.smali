.class Lcom/android/support/Menu$100000008;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Menu;

.field private final val$featName:Ljava/lang/String;

.field private final val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ILjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/android/support/Menu$100000008;->val$featNum:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/android/support/Menu$100000008;->val$featName:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000008;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 838
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Lcom/android/support/Menu$100000008;->val$featNum:I

    sparse-switch v3, :sswitch_data_0

    .line 848
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000008;->val$featName:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/android/support/Menu$100000008;->val$featNum:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    return-void

    .line 841
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 842
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 843
    goto :goto_0

    .line 845
    :sswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000008;->this$0:Lcom/android/support/Menu;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/support/Menu;->stopChecking:Z

    .line 846
    goto :goto_0

    .line 838
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        -0x6 -> :sswitch_0
    .end sparse-switch
.end method
