.class Lcom/android/support/Menu$100000010;
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
    name = "100000010"
.end annotation


# instance fields
.field isOn:Z

.field private final this$0:Lcom/android/support/Menu;

.field private final val$button:Landroid/widget/Button;

.field private final val$featNum:I

.field private final val$finalIsOn:Z

.field private final val$finalfeatName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ZLjava/lang/String;ILandroid/widget/Button;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/android/support/Menu$100000010;->this$0:Lcom/android/support/Menu;

    move-object v7, v0

    move v8, v2

    iput-boolean v8, v7, Lcom/android/support/Menu$100000010;->val$finalIsOn:Z

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/android/support/Menu$100000010;->val$finalfeatName:Ljava/lang/String;

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/android/support/Menu$100000010;->val$featNum:I

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/android/support/Menu$100000010;->val$button:Landroid/widget/Button;

    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/android/support/Menu$100000010;->val$finalIsOn:Z

    iput-boolean v8, v7, Lcom/android/support/Menu$100000010;->isOn:Z

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000010;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000010;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 901
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000010;->val$finalfeatName:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/android/support/Menu$100000010;->val$featNum:I

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/support/Menu$100000010;->isOn:Z

    invoke-static {v3, v4, v5}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    .line 903
    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/support/Menu$100000010;->isOn:Z

    if-eqz v3, :cond_0

    .line 904
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000010;->val$button:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000010;->val$finalfeatName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": ON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 905
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000010;->val$button:Landroid/widget/Button;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000010;->this$0:Lcom/android/support/Menu;

    iget v4, v4, Lcom/android/support/Menu;->BtnON:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 906
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/support/Menu$100000010;->isOn:Z

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000010;->val$button:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu$100000010;->val$finalfeatName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": OFF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 909
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000010;->val$button:Landroid/widget/Button;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000010;->this$0:Lcom/android/support/Menu;

    iget v4, v4, Lcom/android/support/Menu;->BtnOFF:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 910
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/support/Menu$100000010;->isOn:Z

    goto :goto_0
.end method
